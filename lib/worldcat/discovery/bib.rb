module WorldCat
  module Discovery
    class Bib < Spira::Base
      
      property :name, :predicate => SCHEMA_NAME, :type => XSD.string
      property :oclc_number, :predicate => LIB_OCLC_NUMBER, :type => XSD.integer
      property :work_uri, :predicate => SCHEMA_EXAMPLE_OF_WORK, :type => RDF::URI
      property :num_pages, :predicate => SCHEMA_NUMBER_OF_PAGES, :type => XSD.string
      property :date_published, :predicate => SCHEMA_DATE_PUBLISHED, :type => XSD.string
      property :type, :predicate => RDF.type, :type => RDF::URI
      property :same_as, :predicate => OWL_SAME_AS, :type => RDF::URI
      property :language, :predicate => SCHEMA_IN_LANGUAGE, :type => XSD.string
      property :publisher, :predicate => SCHEMA_PUBLISHER, :type => 'Organization'
      property :display_position, :predicate => GOOD_RELATIONS_POSITION, :type => XSD.integer
      has_many :subjects, :predicate => SCHEMA_ABOUT, :type => 'Subject'
      has_many :work_example_uris, :predicate => SCHEMA_WORK_EXAMPLE, :type => RDF::URI
      has_many :places_of_publication, :predicate => LIB_PLACE_OF_PUB, :type => 'Place'
      has_many :descriptions, :predicate => SCHEMA_DESCRIPTION, :type => XSD.string
      has_many :contributors, :predicate => SCHEMA_CONTRIBUTOR, :type => 'Person'
      
      def author
        author_stmt = Spira.repository.query(:subject => self.id, :predicate => SCHEMA_AUTHOR).first
        author_type = Spira.repository.query(:subject => author_stmt.object, :predicate => RDF.type).first
        case author_type.object
        when SCHEMA_PERSON then author_stmt.object.as(Person)
        else nil
        end
      end
      
      def id
        self.subject
      end
      
      def self.search(wskey, params)
        
        # Make the HTTP request for the data
        url = "#{Bib.production_url}/search?q=#{CGI.escape(params[:q])}&facets=#{params[:facets]}"
        auth = wskey.hmac_signature('GET', url)
        resource = RestClient::Resource.new url
        response = resource.get(:authorization => auth, :accept => 'application/rdf+xml')
        
        # Load the data into an in-memory RDF repository, get the GenericResource and its Bib
        Spira.repository = RDF::Repository.new.from_rdfxml(response)
        search_results = Spira.repository.query(:predicate => RDF.type, :object => SCHEMA_SEARCH_RES_PAGE).first.subject.as(SearchResults)
        
        # WorldCat::Discovery::SearchResults.new
        search_results
      end
            
      def self.find(oclc_number, wskey)
        
        # Make the HTTP Request for the data
        url = "#{Bib.production_url}/data/#{oclc_number}"
        auth = wskey.hmac_signature('GET', url)
        resource = RestClient::Resource.new url
        response = resource.get(:authorization => auth, :accept => 'application/rdf+xml')

        # Load the data into an in-memory RDF repository, get the GenericResource and its Bib
        Spira.repository = RDF::Repository.new.from_rdfxml(response)
        generic_resource = Spira.repository.query(:predicate => RDF.type, :object => GENERIC_RESOURCE).first
        bib = generic_resource.subject.as(GenericResource).about
        
        bib
      end

      def self.production_url
        "https://beta.worldcat.org/discovery/bib"
      end
      
    end
  end
end
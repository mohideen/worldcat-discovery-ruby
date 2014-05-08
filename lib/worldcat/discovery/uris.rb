module WorldCat
  module Discovery
    
    GENERIC_RESOURCE       = RDF::URI.new('http://www.w3.org/2006/gen/ont#ContentTypeGenericResource')
    SCHEMA_ABOUT           = RDF::URI.new('http://schema.org/about')
    SCHEMA_AUTHOR          = RDF::URI.new('http://schema.org/author')
    SCHEMA_CONTRIBUTOR     = RDF::URI.new('http://schema.org/contributor')
    SCHEMA_NAME            = RDF::URI.new('http://schema.org/name')
    SCHEMA_BOOK            = RDF::URI.new('http://schema.org/Book')
    SCHEMA_PERSON          = RDF::URI.new('http://schema.org/Person')
    SCHEMA_INTANGIBLE      = RDF::URI.new('http://schema.org/Intangible')
    SCHEMA_PRODUCT_MODEL   = RDF::URI.new('http://schema.org/ProductModel')
    SCHEMA_WORK_EXAMPLE    = RDF::URI.new('http://schema.org/workExample')
    SCHEMA_ISBN            = RDF::URI.new('http://schema.org/isbn')
    SCHEMA_EXAMPLE_OF_WORK = RDF::URI.new('http://schema.org/exampleOfWork')
    SCHEMA_NUMBER_OF_PAGES = RDF::URI.new('http://schema.org/numberOfPages')
    SCHEMA_DATE_PUBLISHED  = RDF::URI.new('http://schema.org/datePublished')
    SCHEMA_IN_LANGUAGE     = RDF::URI.new('http://schema.org/inLanguage')
    SCHEMA_PUBLISHER       = RDF::URI.new('http://schema.org/publisher')
    SCHEMA_DESCRIPTION     = RDF::URI.new('http://schema.org/description')
    SCHEMA_SEARCH_RES_PAGE = RDF::URI.new('http://schema.org/SearchResultsPage')
    SCHEMA_SIGNIFICANT_LINK = RDF::URI.new('http://schema.org/significantLink')
    SCHEMA_BOOK_EDITION    = RDF::URI.new('http://schema.org/bookEdition')
    OWL_SAME_AS            = RDF::URI.new('http://www.w3.org/2002/07/owl#sameAs')
    LIB_OCLC_NUMBER        = RDF::URI.new('http://purl.org/library/oclcnum')
    LIB_PLACE_OF_PUB       = RDF::URI.new('http://purl.org/library/placeOfPublication')
    DISCOVERY_TOTAL_RESULTS  = RDF::URI.new('http://worldcat.org/searcho/totalResults')
    DISCOVERY_ITEMS_PER_PAGE = RDF::URI.new('http://worldcat.org/searcho/itemsPerPage')
    DISCOVERY_START_INDEX    = RDF::URI.new('http://worldcat.org/searcho/startIndex')
    GOOD_RELATIONS_POSITION  = RDF::URI.new('http://purl.org/goodrelations/v1#displayPosition')
    
  end
end
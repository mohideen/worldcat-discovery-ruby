module WorldCat
  module Discovery
    class Subject < Spira::Base
      
      property :name, :predicate => SCHEMA_NAME, :type => XSD.string
      
      def id
        self.subject
      end

    end
  end
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'worldcat/discovery/version'

Gem::Specification.new do |spec|
  spec.name          = "worldcat-discovery"
  spec.version       = WorldCat::Discovery::VERSION
  spec.authors       = ["OCLC Developer Network"]
  spec.email         = ["devnet@oclc.org"]
  spec.description   = %q{A Ruby wrapper for accessing the WorldCat Discovery API}
  spec.summary       = %q{Provides access to the WorldCat Discovery API, parsing the RDF data responses and returning Ruby objects. Requires an OCLC Web Service Key.}
  spec.homepage      = "http://oclc.org/developer"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency 'equivalent-xml', '~> 0.4', '>= 0.4.2'
  spec.add_runtime_dependency 'rdf', '~> 1.1', '>= 1.1.2.1'
  spec.add_runtime_dependency 'rdf-rdfxml', '~> 1.1', '>= 1.1.0.1'
  spec.add_runtime_dependency 'oclc-auth', '~> 1.0', '>= 1.0.0'
  spec.add_runtime_dependency 'spira', '~> 0.7', '>= 0.7.1'
  spec.add_runtime_dependency 'rest-client', '~> 2.0.1', '>= 2.0'
  spec.add_runtime_dependency 'addressable', '~> 2.3', '>= 2.3.6'
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
  spec.add_development_dependency 'rspec', '~> 3.5', '>= 3.5'
  spec.add_development_dependency 'simplecov', '~> 0.14', '>= 0.14.1'
  spec.add_development_dependency 'webmock', '~> 2.3'
end

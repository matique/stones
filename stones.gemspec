lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stones/version'

Gem::Specification.new do |s|
  s.name        = 'stones'
  s.version     = Stones::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Stones contains some basic files."
  s.description = "A collection of, hopefully, useful files."
  s.authors     = ['Dittmar Krall']
  s.email       = ['dittmar.krall@matique.de']
  s.homepage    = 'http://matique.de'
  s.license     = 'MIT'
  s.platform    = Gem::Platform::RUBY

  s.metadata['source_code_uri'] = 'https://github.com/matique/stones'

  s.files         = `git ls-files`.split("\n")
#  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
end

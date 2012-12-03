lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'stones/version'

Gem::Specification.new do |s|
  s.name        = "stones"
  s.version     = Stones::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Stones contains some basic files."
  s.description = "A collection of, hopefully, useful files."
  s.authors     = ['Dittmar Krall']
  s.email       = ['dittmar.krall@matique.de']
  s.homepage    = 'http://matique.de'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

#  s.add_development_dependency "sqlite3"  # for testing
#  s.add_development_dependency "rspec-rails"
#  s.add_development_dependency "capybara"
end

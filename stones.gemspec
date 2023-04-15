lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stones/version"

Gem::Specification.new do |s|
  s.name = "stones"
  s.version = Stones::VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = "Stones contains some basic files."
  s.description = "A collection of, hopefully, useful files."
  s.authors = ["Dittmar Krall"]
  s.email = ["dittmar.krall@matiq.com"]
  s.homepage = "http://matiq.com"
  s.license = "MIT"

  s.metadata["source_code_uri"] = "https://github.com/matique/stones"

  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end

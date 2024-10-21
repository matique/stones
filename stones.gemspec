# frozen_string_literal: true

require_relative "lib/stones/version"

Gem::Specification.new do |s|
  s.name = "stones"
  s.version = Stones::VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = "Stones contains some basic files."
  s.description = "A collection of, hopefully, useful files."
  s.authors = ["Dittmar Krall"]
  s.email = ["dittmar.krall@matiq.com"]
  s.homepage = "https://github.com/matique/stones"
  s.license = "MIT"

  s.files = Dir["lib/**/*"]
  s.files += Dir["app/**/*"]
  s.files += Dir["config/**/*"]
  s.extra_rdoc_files = Dir["README.md", "MIT-LICENSE"]

  s.require_paths = ["lib"]

  s.add_development_dependency "combustion"
  s.add_development_dependency "minitest"
  s.add_development_dependency "minitest-spec-rails"
end

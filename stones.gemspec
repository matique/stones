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

  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 3.3.0"
end

# https://piotrmurach.com/articles/writing-a-ruby-gem-specification/

# Gem::Specification.new do |spec|
#   spec.name        = "emoticon"
#   spec.version     = Emoticon::VERSION
#   spec.summary     = "Display emoticons in your terminal"
#   spec.description = <<~DESC
#     Display emoticons in your terminal. Communicate with your
#     users not only through words but also emotions.
#   DESC
#   spec.authors    = ["Your Name"]
#
#   spec.license  = "MIT"
#   spec.email    = "email@example.com"
#   spec.homepage = "https://github.com/your-handle/emoticon"
#   spec.metadata = {
#     "bug_tracker_uri"   => "https://github.com/your-handle/emoticon/issues",
#     "changelog_uri"     => "https://github.com/your-handle/emoticon/blob/master/CHANGELOG.md",
#     "documentation_uri" => "https://www.rubydoc.info/gems/emoticon",
#     "homepage_uri"      => spec.homepage,
#     "source_code_uri"   => "https://github.com/your-handle/emoticon"
#   }
#
#   spec.files       = Dir["lib/**/*"]
#   spec.bindir      = "exe"
#   spec.executables = %w[emote]
#
#   spec.extra_rdoc_files = Dir["README.md", "CHANGELOG.md", "LICENSE.txt"]
#   spec.rdoc_options    += [
#     "--title", "Emoticon - emotions in terminal",
#     "--main", "README.md",
#     "--line-numbers",
#     "--inline-source",
#     "--quiet"
#   ]
#
#   spec.required_ruby_version = ">= 2.4.0"
#
#   spec.add_dependency "tomlrb", "~> 1.2"
#
#   spec.add_development_dependency "rake", "~> 13.0"
#   spec.add_development_dependency "rspec", "~> 3.0"
# end

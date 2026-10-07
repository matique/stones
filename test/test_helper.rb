if ENV["COVERAGE"]
  require "simplecov"
  SimpleCov.start do
    skip "/test/"
  end
end

require "combustion"
Combustion.path = "test/internal"
Combustion.initialize! :active_record

require "rails/test_help"

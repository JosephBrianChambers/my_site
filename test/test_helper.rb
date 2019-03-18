ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"

class ActiveSupport::TestCase
  Minitest::Reporters.use!(
    [
      Minitest::Reporters::DefaultReporter.new,
      Minitest::Reporters::JUnitReporter.new("tmp/test_results/minitest")
    ]
  )

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

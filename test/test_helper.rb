ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
<<<<<<< HEAD
require 'minitest/rails'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
=======

class ActiveSupport::TestCase
>>>>>>> 3a3c33da21b8b6bf5c1df80eb4605b466cd00707
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
<<<<<<< HEAD
  def json(body)
    JSON.parse(body)
  end
=======
>>>>>>> 3a3c33da21b8b6bf5c1df80eb4605b466cd00707
end

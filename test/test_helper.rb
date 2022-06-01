ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in_as(user)
    # can't user user.password because it will return the hash not the string.
    # so instead we're just providing the string of the pw defined in setup of categories_controller_test
    post login_path, params: { session: { email: user.email, password: "password" } }
  end


end

ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

require "minitest/rails/capybara"

require "minitest/pride"

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  def is_logged_in?
    !session[:user_id].nil?
  end
end

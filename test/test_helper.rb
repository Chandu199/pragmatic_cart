require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
  
  def login_as(user)
    post login_url, params: { name: user.name, password: 'secret' }  
  end
  
  def logout
    delete logout_url
  end
  
  def setup
    login_as users(:one)
  end
  
end

require 'test_helper'

class PasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get password_generate_url
    assert_response :success
  end

end

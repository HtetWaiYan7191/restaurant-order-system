require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_out_user" do
    get users_sign_out_user_url
    assert_response :success
  end
end

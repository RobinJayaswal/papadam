require 'test_helper'

class AdminFunctionsControllerTest < ActionController::TestCase
  test "should get create_blog_post" do
    get :create_blog_post
    assert_response :success
  end

  test "should get create_email" do
    get :create_email
    assert_response :success
  end

end

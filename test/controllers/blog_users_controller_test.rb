require 'test_helper'

class BlogUsersControllerTest < ActionController::TestCase
  setup do
    @blog_user = blog_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_user" do
    assert_difference('BlogUser.count') do
      post :create, blog_user: { password_digest: @blog_user.password_digest, username: @blog_user.username }
    end

    assert_redirected_to blog_user_path(assigns(:blog_user))
  end

  test "should show blog_user" do
    get :show, id: @blog_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_user
    assert_response :success
  end

  test "should update blog_user" do
    patch :update, id: @blog_user, blog_user: { password_digest: @blog_user.password_digest, username: @blog_user.username }
    assert_redirected_to blog_user_path(assigns(:blog_user))
  end

  test "should destroy blog_user" do
    assert_difference('BlogUser.count', -1) do
      delete :destroy, id: @blog_user
    end

    assert_redirected_to blog_users_path
  end
end

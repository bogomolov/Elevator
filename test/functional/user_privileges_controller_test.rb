require 'test_helper'

class UserPrivilegesControllerTest < ActionController::TestCase
  setup do
    @user_privilege = user_privileges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_privileges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_privilege" do
    assert_difference('UserPrivilege.count') do
      post :create, :user_privilege => @user_privilege.attributes
    end

    assert_redirected_to user_privilege_path(assigns(:user_privilege))
  end

  test "should show user_privilege" do
    get :show, :id => @user_privilege.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_privilege.to_param
    assert_response :success
  end

  test "should update user_privilege" do
    put :update, :id => @user_privilege.to_param, :user_privilege => @user_privilege.attributes
    assert_redirected_to user_privilege_path(assigns(:user_privilege))
  end

  test "should destroy user_privilege" do
    assert_difference('UserPrivilege.count', -1) do
      delete :destroy, :id => @user_privilege.to_param
    end

    assert_redirected_to user_privileges_path
  end
end

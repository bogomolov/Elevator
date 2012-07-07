require 'test_helper'

class CoreUsersControllerTest < ActionController::TestCase
  setup do
    @core_user = core_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_user" do
    assert_difference('CoreUser.count') do
      post :create, :core_user => @core_user.attributes
    end

    assert_redirected_to core_user_path(assigns(:core_user))
  end

  test "should show core_user" do
    get :show, :id => @core_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_user.to_param
    assert_response :success
  end

  test "should update core_user" do
    put :update, :id => @core_user.to_param, :core_user => @core_user.attributes
    assert_redirected_to core_user_path(assigns(:core_user))
  end

  test "should destroy core_user" do
    assert_difference('CoreUser.count', -1) do
      delete :destroy, :id => @core_user.to_param
    end

    assert_redirected_to core_users_path
  end
end

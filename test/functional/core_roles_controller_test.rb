require 'test_helper'

class CoreRolesControllerTest < ActionController::TestCase
  setup do
    @core_role = core_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_role" do
    assert_difference('CoreRole.count') do
      post :create, :core_role => @core_role.attributes
    end

    assert_redirected_to core_role_path(assigns(:core_role))
  end

  test "should show core_role" do
    get :show, :id => @core_role.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_role.to_param
    assert_response :success
  end

  test "should update core_role" do
    put :update, :id => @core_role.to_param, :core_role => @core_role.attributes
    assert_redirected_to core_role_path(assigns(:core_role))
  end

  test "should destroy core_role" do
    assert_difference('CoreRole.count', -1) do
      delete :destroy, :id => @core_role.to_param
    end

    assert_redirected_to core_roles_path
  end
end

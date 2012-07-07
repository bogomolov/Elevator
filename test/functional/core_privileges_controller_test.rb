require 'test_helper'

class CorePrivilegesControllerTest < ActionController::TestCase
  setup do
    @core_privilege = core_privileges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_privileges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_privilege" do
    assert_difference('CorePrivilege.count') do
      post :create, :core_privilege => @core_privilege.attributes
    end

    assert_redirected_to core_privilege_path(assigns(:core_privilege))
  end

  test "should show core_privilege" do
    get :show, :id => @core_privilege.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_privilege.to_param
    assert_response :success
  end

  test "should update core_privilege" do
    put :update, :id => @core_privilege.to_param, :core_privilege => @core_privilege.attributes
    assert_redirected_to core_privilege_path(assigns(:core_privilege))
  end

  test "should destroy core_privilege" do
    assert_difference('CorePrivilege.count', -1) do
      delete :destroy, :id => @core_privilege.to_param
    end

    assert_redirected_to core_privileges_path
  end
end

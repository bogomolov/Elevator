require 'test_helper'

class CoreDelegationsControllerTest < ActionController::TestCase
  setup do
    @core_delegation = core_delegations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_delegations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_delegation" do
    assert_difference('CoreDelegation.count') do
      post :create, :core_delegation => @core_delegation.attributes
    end

    assert_redirected_to core_delegation_path(assigns(:core_delegation))
  end

  test "should show core_delegation" do
    get :show, :id => @core_delegation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_delegation.to_param
    assert_response :success
  end

  test "should update core_delegation" do
    put :update, :id => @core_delegation.to_param, :core_delegation => @core_delegation.attributes
    assert_redirected_to core_delegation_path(assigns(:core_delegation))
  end

  test "should destroy core_delegation" do
    assert_difference('CoreDelegation.count', -1) do
      delete :destroy, :id => @core_delegation.to_param
    end

    assert_redirected_to core_delegations_path
  end
end

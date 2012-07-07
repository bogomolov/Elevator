require 'test_helper'

class CoreActionsControllerTest < ActionController::TestCase
  setup do
    @core_action = core_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_action" do
    assert_difference('CoreAction.count') do
      post :create, :core_action => @core_action.attributes
    end

    assert_redirected_to core_action_path(assigns(:core_action))
  end

  test "should show core_action" do
    get :show, :id => @core_action.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_action.to_param
    assert_response :success
  end

  test "should update core_action" do
    put :update, :id => @core_action.to_param, :core_action => @core_action.attributes
    assert_redirected_to core_action_path(assigns(:core_action))
  end

  test "should destroy core_action" do
    assert_difference('CoreAction.count', -1) do
      delete :destroy, :id => @core_action.to_param
    end

    assert_redirected_to core_actions_path
  end
end

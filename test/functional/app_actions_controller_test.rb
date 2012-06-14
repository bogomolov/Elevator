require 'test_helper'

class AppActionsControllerTest < ActionController::TestCase
  setup do
    @app_action = app_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_action" do
    assert_difference('AppAction.count') do
      post :create, :app_action => @app_action.attributes
    end

    assert_redirected_to app_action_path(assigns(:app_action))
  end

  test "should show app_action" do
    get :show, :id => @app_action.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @app_action.to_param
    assert_response :success
  end

  test "should update app_action" do
    put :update, :id => @app_action.to_param, :app_action => @app_action.attributes
    assert_redirected_to app_action_path(assigns(:app_action))
  end

  test "should destroy app_action" do
    assert_difference('AppAction.count', -1) do
      delete :destroy, :id => @app_action.to_param
    end

    assert_redirected_to app_actions_path
  end
end

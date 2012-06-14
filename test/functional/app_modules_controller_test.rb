require 'test_helper'

class AppModulesControllerTest < ActionController::TestCase
  setup do
    @app_module = app_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_module" do
    assert_difference('AppModule.count') do
      post :create, :app_module => @app_module.attributes
    end

    assert_redirected_to app_module_path(assigns(:app_module))
  end

  test "should show app_module" do
    get :show, :id => @app_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @app_module.to_param
    assert_response :success
  end

  test "should update app_module" do
    put :update, :id => @app_module.to_param, :app_module => @app_module.attributes
    assert_redirected_to app_module_path(assigns(:app_module))
  end

  test "should destroy app_module" do
    assert_difference('AppModule.count', -1) do
      delete :destroy, :id => @app_module.to_param
    end

    assert_redirected_to app_modules_path
  end
end

require 'test_helper'

class CoreModulesControllerTest < ActionController::TestCase
  setup do
    @core_module = core_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_module" do
    assert_difference('CoreModule.count') do
      post :create, :core_module => @core_module.attributes
    end

    assert_redirected_to core_module_path(assigns(:core_module))
  end

  test "should show core_module" do
    get :show, :id => @core_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @core_module.to_param
    assert_response :success
  end

  test "should update core_module" do
    put :update, :id => @core_module.to_param, :core_module => @core_module.attributes
    assert_redirected_to core_module_path(assigns(:core_module))
  end

  test "should destroy core_module" do
    assert_difference('CoreModule.count', -1) do
      delete :destroy, :id => @core_module.to_param
    end

    assert_redirected_to core_modules_path
  end
end

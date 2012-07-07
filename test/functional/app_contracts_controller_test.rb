require 'test_helper'

class AppContractsControllerTest < ActionController::TestCase
  setup do
    @app_contract = app_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_contract" do
    assert_difference('AppContract.count') do
      post :create, :app_contract => @app_contract.attributes
    end

    assert_redirected_to app_contract_path(assigns(:app_contract))
  end

  test "should show app_contract" do
    get :show, :id => @app_contract.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @app_contract.to_param
    assert_response :success
  end

  test "should update app_contract" do
    put :update, :id => @app_contract.to_param, :app_contract => @app_contract.attributes
    assert_redirected_to app_contract_path(assigns(:app_contract))
  end

  test "should destroy app_contract" do
    assert_difference('AppContract.count', -1) do
      delete :destroy, :id => @app_contract.to_param
    end

    assert_redirected_to app_contracts_path
  end
end

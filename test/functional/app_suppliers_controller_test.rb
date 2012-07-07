require 'test_helper'

class AppSuppliersControllerTest < ActionController::TestCase
  setup do
    @app_supplier = app_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_supplier" do
    assert_difference('AppSupplier.count') do
      post :create, :app_supplier => @app_supplier.attributes
    end

    assert_redirected_to app_supplier_path(assigns(:app_supplier))
  end

  test "should show app_supplier" do
    get :show, :id => @app_supplier.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @app_supplier.to_param
    assert_response :success
  end

  test "should update app_supplier" do
    put :update, :id => @app_supplier.to_param, :app_supplier => @app_supplier.attributes
    assert_redirected_to app_supplier_path(assigns(:app_supplier))
  end

  test "should destroy app_supplier" do
    assert_difference('AppSupplier.count', -1) do
      delete :destroy, :id => @app_supplier.to_param
    end

    assert_redirected_to app_suppliers_path
  end
end

require 'test_helper'

class ConfPropertiesControllerTest < ActionController::TestCase
  setup do
    @conf_property = conf_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conf_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conf_property" do
    assert_difference('ConfProperty.count') do
      post :create, :conf_property => @conf_property.attributes
    end

    assert_redirected_to conf_property_path(assigns(:conf_property))
  end

  test "should show conf_property" do
    get :show, :id => @conf_property.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @conf_property.to_param
    assert_response :success
  end

  test "should update conf_property" do
    put :update, :id => @conf_property.to_param, :conf_property => @conf_property.attributes
    assert_redirected_to conf_property_path(assigns(:conf_property))
  end

  test "should destroy conf_property" do
    assert_difference('ConfProperty.count', -1) do
      delete :destroy, :id => @conf_property.to_param
    end

    assert_redirected_to conf_properties_path
  end
end

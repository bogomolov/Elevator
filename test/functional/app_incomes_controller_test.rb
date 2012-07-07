require 'test_helper'

class AppIncomesControllerTest < ActionController::TestCase
  setup do
    @app_income = app_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_income" do
    assert_difference('AppIncome.count') do
      post :create, app_income: { batch_id: @app_income.batch_id, car_num: @app_income.car_num, moisture: @app_income.moisture, weight_brutto: @app_income.weight_brutto }
    end

    assert_redirected_to app_income_path(assigns(:app_income))
  end

  test "should show app_income" do
    get :show, id: @app_income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_income
    assert_response :success
  end

  test "should update app_income" do
    put :update, id: @app_income, app_income: { batch_id: @app_income.batch_id, car_num: @app_income.car_num, moisture: @app_income.moisture, weight_brutto: @app_income.weight_brutto }
    assert_redirected_to app_income_path(assigns(:app_income))
  end

  test "should destroy app_income" do
    assert_difference('AppIncome.count', -1) do
      delete :destroy, id: @app_income
    end

    assert_redirected_to app_incomes_path
  end
end

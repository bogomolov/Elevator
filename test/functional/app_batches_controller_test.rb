require 'test_helper'

class AppBatchesControllerTest < ActionController::TestCase
  setup do
    @app_batch = app_batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_batch" do
    assert_difference('AppBatch.count') do
      post :create, app_batch: { batch_date: @app_batch.batch_date }
    end

    assert_redirected_to app_batch_path(assigns(:app_batch))
  end

  test "should show app_batch" do
    get :show, id: @app_batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_batch
    assert_response :success
  end

  test "should update app_batch" do
    put :update, id: @app_batch, app_batch: { batch_date: @app_batch.batch_date }
    assert_redirected_to app_batch_path(assigns(:app_batch))
  end

  test "should destroy app_batch" do
    assert_difference('AppBatch.count', -1) do
      delete :destroy, id: @app_batch
    end

    assert_redirected_to app_batches_path
  end
end

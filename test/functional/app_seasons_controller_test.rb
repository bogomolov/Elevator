require 'test_helper'

class AppSeasonsControllerTest < ActionController::TestCase
  setup do
    @app_season = app_seasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_seasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_season" do
    assert_difference('AppSeason.count') do
      post :create, app_season: { active: @app_season.active, year: @app_season.year }
    end

    assert_redirected_to app_season_path(assigns(:app_season))
  end

  test "should show app_season" do
    get :show, id: @app_season
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_season
    assert_response :success
  end

  test "should update app_season" do
    put :update, id: @app_season, app_season: { active: @app_season.active, year: @app_season.year }
    assert_redirected_to app_season_path(assigns(:app_season))
  end

  test "should destroy app_season" do
    assert_difference('AppSeason.count', -1) do
      delete :destroy, id: @app_season
    end

    assert_redirected_to app_seasons_path
  end
end

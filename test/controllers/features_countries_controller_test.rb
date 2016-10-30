require 'test_helper'

class FeaturesCountriesControllerTest < ActionController::TestCase
  setup do
    @features_country = features_countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:features_countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create features_country" do
    assert_difference('FeaturesCountry.count') do
      post :create, features_country: { example: @features_country.example, featrure: @features_country.featrure, img: @features_country.img, name: @features_country.name }
    end

    assert_redirected_to features_country_path(assigns(:features_country))
  end

  test "should show features_country" do
    get :show, id: @features_country
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @features_country
    assert_response :success
  end

  test "should update features_country" do
    patch :update, id: @features_country, features_country: { example: @features_country.example, featrure: @features_country.featrure, img: @features_country.img, name: @features_country.name }
    assert_redirected_to features_country_path(assigns(:features_country))
  end

  test "should destroy features_country" do
    assert_difference('FeaturesCountry.count', -1) do
      delete :destroy, id: @features_country
    end

    assert_redirected_to features_countries_path
  end
end

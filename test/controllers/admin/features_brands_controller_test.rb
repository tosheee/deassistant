require 'test_helper'

class Admin::FeaturesBrandsControllerTest < ActionController::TestCase
  setup do
    @admin_features_brand = admin_features_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_features_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_features_brand" do
    assert_difference('Admin::FeaturesBrand.count') do
      post :create, admin_features_brand: { brand: @admin_features_brand.brand, description: @admin_features_brand.description, product_id: @admin_features_brand.product_id }
    end

    assert_redirected_to admin_features_brand_path(assigns(:admin_features_brand))
  end

  test "should show admin_features_brand" do
    get :show, id: @admin_features_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_features_brand
    assert_response :success
  end

  test "should update admin_features_brand" do
    patch :update, id: @admin_features_brand, admin_features_brand: { brand: @admin_features_brand.brand, description: @admin_features_brand.description, product_id: @admin_features_brand.product_id }
    assert_redirected_to admin_features_brand_path(assigns(:admin_features_brand))
  end

  test "should destroy admin_features_brand" do
    assert_difference('Admin::FeaturesBrand.count', -1) do
      delete :destroy, id: @admin_features_brand
    end

    assert_redirected_to admin_features_brands_path
  end
end

require 'test_helper'

class Admin::FeatureBrandAttributesControllerTest < ActionController::TestCase
  setup do
    @admin_feature_brand_attribute = admin_feature_brand_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_feature_brand_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_feature_brand_attribute" do
    assert_difference('Admin::FeatureBrandAttribute.count') do
      post :create, admin_feature_brand_attribute: { aliases: @admin_feature_brand_attribute.aliases, ean: @admin_feature_brand_attribute.ean, example: @admin_feature_brand_attribute.example, features_brands_id: @admin_feature_brand_attribute.features_brands_id, model: @admin_feature_brand_attribute.model, model_description: @admin_feature_brand_attribute.model_description, pn: @admin_feature_brand_attribute.pn, product_id: @admin_feature_brand_attribute.product_id, seria: @admin_feature_brand_attribute.seria, seria_description: @admin_feature_brand_attribute.seria_description }
    end

    assert_redirected_to admin_feature_brand_attribute_path(assigns(:admin_feature_brand_attribute))
  end

  test "should show admin_feature_brand_attribute" do
    get :show, id: @admin_feature_brand_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_feature_brand_attribute
    assert_response :success
  end

  test "should update admin_feature_brand_attribute" do
    patch :update, id: @admin_feature_brand_attribute, admin_feature_brand_attribute: { aliases: @admin_feature_brand_attribute.aliases, ean: @admin_feature_brand_attribute.ean, example: @admin_feature_brand_attribute.example, features_brands_id: @admin_feature_brand_attribute.features_brands_id, model: @admin_feature_brand_attribute.model, model_description: @admin_feature_brand_attribute.model_description, pn: @admin_feature_brand_attribute.pn, product_id: @admin_feature_brand_attribute.product_id, seria: @admin_feature_brand_attribute.seria, seria_description: @admin_feature_brand_attribute.seria_description }
    assert_redirected_to admin_feature_brand_attribute_path(assigns(:admin_feature_brand_attribute))
  end

  test "should destroy admin_feature_brand_attribute" do
    assert_difference('Admin::FeatureBrandAttribute.count', -1) do
      delete :destroy, id: @admin_feature_brand_attribute
    end

    assert_redirected_to admin_feature_brand_attributes_path
  end
end

require 'test_helper'

class Admin::ProductAttributesControllerTest < ActionController::TestCase
  setup do
    @admin_product_attribute = admin_product_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_product_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_product_attribute" do
    assert_difference('Admin::ProductAttribute.count') do
      post :create, admin_product_attribute: { attribute_description: @admin_product_attribute.attribute_description, name_attribute: @admin_product_attribute.name_attribute, product_id: @admin_product_attribute.product_id }
    end

    assert_redirected_to admin_product_attribute_path(assigns(:admin_product_attribute))
  end

  test "should show admin_product_attribute" do
    get :show, id: @admin_product_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_product_attribute
    assert_response :success
  end

  test "should update admin_product_attribute" do
    patch :update, id: @admin_product_attribute, admin_product_attribute: { attribute_description: @admin_product_attribute.attribute_description, name_attribute: @admin_product_attribute.name_attribute, product_id: @admin_product_attribute.product_id }
    assert_redirected_to admin_product_attribute_path(assigns(:admin_product_attribute))
  end

  test "should destroy admin_product_attribute" do
    assert_difference('Admin::ProductAttribute.count', -1) do
      delete :destroy, id: @admin_product_attribute
    end

    assert_redirected_to admin_product_attributes_path
  end
end

require 'test_helper'

class ProductDescriptionsControllerTest < ActionController::TestCase
  setup do
    @product_description = product_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_description" do
    assert_difference('ProductDescription.count') do
      post :create, product_description: { attr_descript_p10: @product_description.attr_descript_p10, attr_descript_p11: @product_description.attr_descript_p11, attr_descript_p12: @product_description.attr_descript_p12, attr_descript_p13: @product_description.attr_descript_p13, attr_descript_p14: @product_description.attr_descript_p14, attr_descript_p15: @product_description.attr_descript_p15, attr_descript_p16: @product_description.attr_descript_p16, attr_descript_p17: @product_description.attr_descript_p17, attr_descript_p18: @product_description.attr_descript_p18, attr_descript_p19: @product_description.attr_descript_p19, attr_descript_p1: @product_description.attr_descript_p1, attr_descript_p20: @product_description.attr_descript_p20, attr_descript_p2: @product_description.attr_descript_p2, attr_descript_p3: @product_description.attr_descript_p3, attr_descript_p4: @product_description.attr_descript_p4, attr_descript_p5: @product_description.attr_descript_p5, attr_descript_p6: @product_description.attr_descript_p6, attr_descript_p7: @product_description.attr_descript_p7, attr_descript_p8: @product_description.attr_descript_p8, attr_descript_p9: @product_description.attr_descript_p9, attr_p10: @product_description.attr_p10, attr_p11: @product_description.attr_p11, attr_p12: @product_description.attr_p12, attr_p13: @product_description.attr_p13, attr_p14: @product_description.attr_p14, attr_p15: @product_description.attr_p15, attr_p16: @product_description.attr_p16, attr_p17: @product_description.attr_p17, attr_p18: @product_description.attr_p18, attr_p19: @product_description.attr_p19, attr_p1: @product_description.attr_p1, attr_p20: @product_description.attr_p20, attr_p2: @product_description.attr_p2, attr_p3: @product_description.attr_p3, attr_p4: @product_description.attr_p4, attr_p5: @product_description.attr_p5, attr_p6: @product_description.attr_p6, attr_p7: @product_description.attr_p7, attr_p8: @product_description.attr_p8, attr_p9: @product_description.attr_p9, product_description: @product_description.product_description, product_id: @product_description.product_id }
    end

    assert_redirected_to product_description_path(assigns(:product_description))
  end

  test "should show product_description" do
    get :show, id: @product_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_description
    assert_response :success
  end

  test "should update product_description" do
    patch :update, id: @product_description, product_description: { attr_descript_p10: @product_description.attr_descript_p10, attr_descript_p11: @product_description.attr_descript_p11, attr_descript_p12: @product_description.attr_descript_p12, attr_descript_p13: @product_description.attr_descript_p13, attr_descript_p14: @product_description.attr_descript_p14, attr_descript_p15: @product_description.attr_descript_p15, attr_descript_p16: @product_description.attr_descript_p16, attr_descript_p17: @product_description.attr_descript_p17, attr_descript_p18: @product_description.attr_descript_p18, attr_descript_p19: @product_description.attr_descript_p19, attr_descript_p1: @product_description.attr_descript_p1, attr_descript_p20: @product_description.attr_descript_p20, attr_descript_p2: @product_description.attr_descript_p2, attr_descript_p3: @product_description.attr_descript_p3, attr_descript_p4: @product_description.attr_descript_p4, attr_descript_p5: @product_description.attr_descript_p5, attr_descript_p6: @product_description.attr_descript_p6, attr_descript_p7: @product_description.attr_descript_p7, attr_descript_p8: @product_description.attr_descript_p8, attr_descript_p9: @product_description.attr_descript_p9, attr_p10: @product_description.attr_p10, attr_p11: @product_description.attr_p11, attr_p12: @product_description.attr_p12, attr_p13: @product_description.attr_p13, attr_p14: @product_description.attr_p14, attr_p15: @product_description.attr_p15, attr_p16: @product_description.attr_p16, attr_p17: @product_description.attr_p17, attr_p18: @product_description.attr_p18, attr_p19: @product_description.attr_p19, attr_p1: @product_description.attr_p1, attr_p20: @product_description.attr_p20, attr_p2: @product_description.attr_p2, attr_p3: @product_description.attr_p3, attr_p4: @product_description.attr_p4, attr_p5: @product_description.attr_p5, attr_p6: @product_description.attr_p6, attr_p7: @product_description.attr_p7, attr_p8: @product_description.attr_p8, attr_p9: @product_description.attr_p9, product_description: @product_description.product_description, product_id: @product_description.product_id }
    assert_redirected_to product_description_path(assigns(:product_description))
  end

  test "should destroy product_description" do
    assert_difference('ProductDescription.count', -1) do
      delete :destroy, id: @product_description
    end

    assert_redirected_to product_descriptions_path
  end
end

require 'test_helper'

class AppleMacbooksControllerTest < ActionController::TestCase
  setup do
    @apple_macbook = apple_macbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apple_macbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apple_macbook" do
    assert_difference('AppleMacbook.count') do
      post :create, apple_macbook: { brand: @apple_macbook.brand, cpu_brand: @apple_macbook.cpu_brand, cpu_model: @apple_macbook.cpu_model, cpu_seria: @apple_macbook.cpu_seria, display: @apple_macbook.display, ean: @apple_macbook.ean, model: @apple_macbook.model, os: @apple_macbook.os, pn: @apple_macbook.pn, ram: @apple_macbook.ram, resolution: @apple_macbook.resolution, seria: @apple_macbook.seria, storage: @apple_macbook.storage, touch_screen: @apple_macbook.touch_screen, video_brand: @apple_macbook.video_brand, video_model: @apple_macbook.video_model }
    end

    assert_redirected_to apple_macbook_path(assigns(:apple_macbook))
  end

  test "should show apple_macbook" do
    get :show, id: @apple_macbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apple_macbook
    assert_response :success
  end

  test "should update apple_macbook" do
    patch :update, id: @apple_macbook, apple_macbook: { brand: @apple_macbook.brand, cpu_brand: @apple_macbook.cpu_brand, cpu_model: @apple_macbook.cpu_model, cpu_seria: @apple_macbook.cpu_seria, display: @apple_macbook.display, ean: @apple_macbook.ean, model: @apple_macbook.model, os: @apple_macbook.os, pn: @apple_macbook.pn, ram: @apple_macbook.ram, resolution: @apple_macbook.resolution, seria: @apple_macbook.seria, storage: @apple_macbook.storage, touch_screen: @apple_macbook.touch_screen, video_brand: @apple_macbook.video_brand, video_model: @apple_macbook.video_model }
    assert_redirected_to apple_macbook_path(assigns(:apple_macbook))
  end

  test "should destroy apple_macbook" do
    assert_difference('AppleMacbook.count', -1) do
      delete :destroy, id: @apple_macbook
    end

    assert_redirected_to apple_macbooks_path
  end
end

require 'test_helper'

class MacbooksControllerTest < ActionController::TestCase
  setup do
    @macbook = macbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macbook" do
    assert_difference('Macbook.count') do
      post :create, macbook: { brand: @macbook.brand, cpu_brand: @macbook.cpu_brand, cpu_model: @macbook.cpu_model, cpu_seria: @macbook.cpu_seria, display: @macbook.display, ean: @macbook.ean, model: @macbook.model, os: @macbook.os, pn: @macbook.pn, ram: @macbook.ram, resolution: @macbook.resolution, seria: @macbook.seria, storage: @macbook.storage, touch_screan: @macbook.touch_screan, video_brand: @macbook.video_brand, video_model: @macbook.video_model }
    end

    assert_redirected_to macbook_path(assigns(:macbook))
  end

  test "should show macbook" do
    get :show, id: @macbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @macbook
    assert_response :success
  end

  test "should update macbook" do
    patch :update, id: @macbook, macbook: { brand: @macbook.brand, cpu_brand: @macbook.cpu_brand, cpu_model: @macbook.cpu_model, cpu_seria: @macbook.cpu_seria, display: @macbook.display, ean: @macbook.ean, model: @macbook.model, os: @macbook.os, pn: @macbook.pn, ram: @macbook.ram, resolution: @macbook.resolution, seria: @macbook.seria, storage: @macbook.storage, touch_screan: @macbook.touch_screan, video_brand: @macbook.video_brand, video_model: @macbook.video_model }
    assert_redirected_to macbook_path(assigns(:macbook))
  end

  test "should destroy macbook" do
    assert_difference('Macbook.count', -1) do
      delete :destroy, id: @macbook
    end

    assert_redirected_to macbooks_path
  end
end

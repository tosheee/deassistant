require 'test_helper'

class TabletsControllerTest < ActionController::TestCase
  setup do
    @tablet = tablets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tablets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tablet" do
    assert_difference('Tablet.count') do
      post :create, tablet: { aen: @tablet.aen, brand: @tablet.brand, color: @tablet.color, connection: @tablet.connection, model: @tablet.model, partnumber: @tablet.partnumber, seria: @tablet.seria, storage: @tablet.storage }
    end

    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should show tablet" do
    get :show, id: @tablet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tablet
    assert_response :success
  end

  test "should update tablet" do
    patch :update, id: @tablet, tablet: { aen: @tablet.aen, brand: @tablet.brand, color: @tablet.color, connection: @tablet.connection, model: @tablet.model, partnumber: @tablet.partnumber, seria: @tablet.seria, storage: @tablet.storage }
    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should destroy tablet" do
    assert_difference('Tablet.count', -1) do
      delete :destroy, id: @tablet
    end

    assert_redirected_to tablets_path
  end
end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get deassistant" do
    get :deassistant
    assert_response :success
  end

end

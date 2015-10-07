require 'test_helper'

class MenuControllerTest < ActionController::TestCase
  test "should get browse" do
    get :browse
    assert_response :success
  end

end

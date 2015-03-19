require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get thanks" do
    get :thanks
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get connect" do
    get :connect
    assert_response :success
  end

end

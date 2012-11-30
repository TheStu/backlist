require 'test_helper'

class StaticsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get winter" do
    get :winter
    assert_response :success
  end

  test "should get summer" do
    get :summer
    assert_response :success
  end

  test "should get ultralight" do
    get :ultralight
    assert_response :success
  end

end

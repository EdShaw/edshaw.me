require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get get" do
    get :get
    assert_response :success
  end

  test "should get getbyid" do
    get :getbyid
    assert_response :success
  end

  test "should get getbyslug" do
    get :getbyslug
    assert_response :success
  end

end

require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get project" do
    get :project
    assert_response :success
  end

  test "should get programming" do
    get :programming
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end

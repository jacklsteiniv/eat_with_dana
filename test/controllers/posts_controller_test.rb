require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get food_and_body" do
    get :food_and_body
    assert_response :success
  end

  test "should get lifestyle" do
    get :lifestyle
    assert_response :success
  end

  test "should get recipes" do
    get :recipes
    assert_response :success
  end

end

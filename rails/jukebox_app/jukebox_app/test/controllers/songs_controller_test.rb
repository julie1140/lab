require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get artists" do
    get :artists
    assert_response :success
  end

  test "should get shuffle" do
    get :shuffle
    assert_response :success
  end

end

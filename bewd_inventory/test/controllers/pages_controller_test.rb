require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get parrot" do
    get :parrot
    assert_response :success
  end

end

require 'test_helper'

class MyBooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

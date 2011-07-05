require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get loading" do
    get :loading
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end

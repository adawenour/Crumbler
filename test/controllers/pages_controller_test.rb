require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get wlcome" do
    get :wlcome
    assert_response :success
  end

end

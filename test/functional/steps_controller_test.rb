require 'test_helper'

class StepsControllerTest < ActionController::TestCase
  test "should get step_1" do
    get :step_1
    assert_response :success
  end

end

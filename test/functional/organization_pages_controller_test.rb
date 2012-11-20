require 'test_helper'

class OrganizationPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get setting" do
    get :setting
    assert_response :success
  end

  test "should get sponsoring" do
    get :sponsoring
    assert_response :success
  end

  test "should get donations" do
    get :donations
    assert_response :success
  end

end

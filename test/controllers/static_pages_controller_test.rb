require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get help" do
    get help_url
    assert_response :success
  end

  test "should get faqs" do
    get faqs_url
    assert_response :success
  end

  test "should get terms_and_conditions" do
    get terms_and_conditions_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get privacy_policy_url
    assert_response :success
  end

  test "should get share_policy" do
    get share_policy_url
    assert_response :success
  end
  
  test "should get press" do
    get press_url
    assert_response :success
  end

end

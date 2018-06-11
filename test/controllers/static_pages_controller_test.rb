require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
  end 

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get faqs" do
    get static_pages_faqs_url
    assert_response :success
  end

  test "should get terms_and_conditions" do
    get static_pages_terms_and_conditions_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get static_pages_privacy_policy_url
    assert_response :success
  end

  test "should get share_policy" do
    get static_pages_share_policy_url
    assert_response :success
  end

  test "should get press" do
    get static_pages_press_url
    assert_response :success
  end

end

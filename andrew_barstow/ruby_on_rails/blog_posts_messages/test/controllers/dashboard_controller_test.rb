require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dashboard_new_url
    assert_response :success
  end

  test "should get display" do
    get dashboard_display_url
    assert_response :success
  end

  test "should get edit" do
    get dashboard_edit_url
    assert_response :success
  end

  test "should get update" do
    get dashboard_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dashboard_destroy_url
    assert_response :success
  end

  test "should get total" do
    get dashboard_total_url
    assert_response :success
  end

end

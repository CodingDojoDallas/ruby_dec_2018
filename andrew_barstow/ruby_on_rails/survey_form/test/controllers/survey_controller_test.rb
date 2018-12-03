require 'test_helper'

class SurveyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get survey_index_url
    assert_response :success
  end

  test "should get result" do
    get survey_result_url
    assert_response :success
  end

  test "should get post" do
    get survey_post_url
    assert_response :success
  end

end

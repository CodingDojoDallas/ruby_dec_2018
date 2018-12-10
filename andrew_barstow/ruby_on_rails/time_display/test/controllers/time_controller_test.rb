require 'test_helper'

class TimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_index_url
    assert_response :success
  end

end

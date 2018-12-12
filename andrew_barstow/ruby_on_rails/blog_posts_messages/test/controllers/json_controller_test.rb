require 'test_helper'

class JsonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get json_index_url
    assert_response :success
  end

end

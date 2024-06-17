require "test_helper"

class BrothsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get broths_index_url
    assert_response :success
  end
end

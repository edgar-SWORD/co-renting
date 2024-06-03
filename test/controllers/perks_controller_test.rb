require "test_helper"

class PerksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get perks_index_url
    assert_response :success
  end
end

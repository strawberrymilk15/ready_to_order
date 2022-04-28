require "test_helper"

class ShopIndexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_index_index_url
    assert_response :success
  end
end

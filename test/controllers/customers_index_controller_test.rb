require "test_helper"

class CustomersIndexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_index_index_url
    assert_response :success
  end
end

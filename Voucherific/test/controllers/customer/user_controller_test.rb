require 'test_helper'

class Customer::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_user_index_url
    assert_response :success
  end

end

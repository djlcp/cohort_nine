require 'test_helper'

class Customer::VoucherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_voucher_index_url
    assert_response :success
  end

end

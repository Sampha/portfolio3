require 'test_helper'

class ShippingControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get shipping_name_url
    assert_response :success
  end

  test "should get cost:decimal" do
    get shipping_cost:decimal_url
    assert_response :success
  end

  test "should get order:references" do
    get shipping_order:references_url
    assert_response :success
  end

end

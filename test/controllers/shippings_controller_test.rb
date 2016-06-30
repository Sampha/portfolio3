require 'test_helper'

class ShippingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping = shippings(:one)
  end

  test "should get index" do
    get shippings_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_url
    assert_response :success
  end

  test "should create shipping" do
    assert_difference('Shipping.count') do
      post shippings_url, params: { shipping: { cost: @shipping.cost, name: @shipping.name, order_id: @shipping.order_id } }
    end

    assert_redirected_to shipping_path(Shipping.last)
  end

  test "should show shipping" do
    get shipping_url(@shipping)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_url(@shipping)
    assert_response :success
  end

  test "should update shipping" do
    patch shipping_url(@shipping), params: { shipping: { cost: @shipping.cost, name: @shipping.name, order_id: @shipping.order_id } }
    assert_redirected_to shipping_path(@shipping)
  end

  test "should destroy shipping" do
    assert_difference('Shipping.count', -1) do
      delete shipping_url(@shipping)
    end

    assert_redirected_to shippings_path
  end
end

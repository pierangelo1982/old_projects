require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { cleaning: @order.cleaning, custumer_id: @order.custumer_id, delivery_id: @order.delivery_id, end: @order.end, insurance: @order.insurance, number_day: @order.number_day, price_pretax: @order.price_pretax, price_tax: @order.price_tax, product_ids: @order.product_ids, start: @order.start, status: @order.status, taxation_id: @order.taxation_id, total: @order.total }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { cleaning: @order.cleaning, custumer_id: @order.custumer_id, delivery_id: @order.delivery_id, end: @order.end, insurance: @order.insurance, number_day: @order.number_day, price_pretax: @order.price_pretax, price_tax: @order.price_tax, product_ids: @order.product_ids, start: @order.start, status: @order.status, taxation_id: @order.taxation_id, total: @order.total }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end

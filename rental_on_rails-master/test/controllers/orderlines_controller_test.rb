require 'test_helper'

class OrderlinesControllerTest < ActionController::TestCase
  setup do
    @orderline = orderlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderline" do
    assert_difference('Orderline.count') do
      post :create, orderline: { order_id: @orderline.order_id, product_id: @orderline.product_id }
    end

    assert_redirected_to orderline_path(assigns(:orderline))
  end

  test "should show orderline" do
    get :show, id: @orderline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orderline
    assert_response :success
  end

  test "should update orderline" do
    patch :update, id: @orderline, orderline: { order_id: @orderline.order_id, product_id: @orderline.product_id }
    assert_redirected_to orderline_path(assigns(:orderline))
  end

  test "should destroy orderline" do
    assert_difference('Orderline.count', -1) do
      delete :destroy, id: @orderline
    end

    assert_redirected_to orderlines_path
  end
end

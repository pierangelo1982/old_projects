require 'test_helper'

class FinishedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finished_product = finished_products(:one)
  end

  test "should get index" do
    get finished_products_url
    assert_response :success
  end

  test "should get new" do
    get new_finished_product_url
    assert_response :success
  end

  test "should create finished_product" do
    assert_difference('FinishedProduct.count') do
      post finished_products_url, params: { finished_product: { anno_riferimento: @finished_product.anno_riferimento, note: @finished_product.note, ore_marcia: @finished_product.ore_marcia, origine_dato: @finished_product.origine_dato, raw_material_id: @finished_product.raw_material_id, unita_misura: @finished_product.unita_misura, vprodotto: @finished_product.vprodotto } }
    end

    assert_redirected_to finished_product_url(FinishedProduct.last)
  end

  test "should show finished_product" do
    get finished_product_url(@finished_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_finished_product_url(@finished_product)
    assert_response :success
  end

  test "should update finished_product" do
    patch finished_product_url(@finished_product), params: { finished_product: { anno_riferimento: @finished_product.anno_riferimento, note: @finished_product.note, ore_marcia: @finished_product.ore_marcia, origine_dato: @finished_product.origine_dato, raw_material_id: @finished_product.raw_material_id, unita_misura: @finished_product.unita_misura, vprodotto: @finished_product.vprodotto } }
    assert_redirected_to finished_product_url(@finished_product)
  end

  test "should destroy finished_product" do
    assert_difference('FinishedProduct.count', -1) do
      delete finished_product_url(@finished_product)
    end

    assert_redirected_to finished_products_url
  end
end

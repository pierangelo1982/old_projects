require 'test_helper'

class CompressorItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compressor_item = compressor_items(:one)
  end

  test "should get index" do
    get compressor_items_url
    assert_response :success
  end

  test "should get new" do
    get new_compressor_item_url
    assert_response :success
  end

  test "should create compressor_item" do
    assert_difference('CompressorItem.count') do
      post compressor_items_url, params: { compressor_item: { anno: @compressor_item.anno, compressor_id: @compressor_item.compressor_id, marca: @compressor_item.marca, modello: @compressor_item.modello, note: @compressor_item.note, potenza: @compressor_item.potenza } }
    end

    assert_redirected_to compressor_item_url(CompressorItem.last)
  end

  test "should show compressor_item" do
    get compressor_item_url(@compressor_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_compressor_item_url(@compressor_item)
    assert_response :success
  end

  test "should update compressor_item" do
    patch compressor_item_url(@compressor_item), params: { compressor_item: { anno: @compressor_item.anno, compressor_id: @compressor_item.compressor_id, marca: @compressor_item.marca, modello: @compressor_item.modello, note: @compressor_item.note, potenza: @compressor_item.potenza } }
    assert_redirected_to compressor_item_url(@compressor_item)
  end

  test "should destroy compressor_item" do
    assert_difference('CompressorItem.count', -1) do
      delete compressor_item_url(@compressor_item)
    end

    assert_redirected_to compressor_items_url
  end
end

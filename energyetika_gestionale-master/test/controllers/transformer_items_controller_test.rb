require 'test_helper'

class TransformerItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transformer_item = transformer_items(:one)
  end

  test "should get index" do
    get transformer_items_url
    assert_response :success
  end

  test "should get new" do
    get new_transformer_item_url
    assert_response :success
  end

  test "should create transformer_item" do
    assert_difference('TransformerItem.count') do
      post transformer_items_url, params: { transformer_item: { marca: @transformer_item.marca, modello: @transformer_item.modello, note: @transformer_item.note, tensione: @transformer_item.tensione, transformer_id: @transformer_item.transformer_id, trasformatore: @transformer_item.trasformatore } }
    end

    assert_redirected_to transformer_item_url(TransformerItem.last)
  end

  test "should show transformer_item" do
    get transformer_item_url(@transformer_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_transformer_item_url(@transformer_item)
    assert_response :success
  end

  test "should update transformer_item" do
    patch transformer_item_url(@transformer_item), params: { transformer_item: { marca: @transformer_item.marca, modello: @transformer_item.modello, note: @transformer_item.note, tensione: @transformer_item.tensione, transformer_id: @transformer_item.transformer_id, trasformatore: @transformer_item.trasformatore } }
    assert_redirected_to transformer_item_url(@transformer_item)
  end

  test "should destroy transformer_item" do
    assert_difference('TransformerItem.count', -1) do
      delete transformer_item_url(@transformer_item)
    end

    assert_redirected_to transformer_items_url
  end
end

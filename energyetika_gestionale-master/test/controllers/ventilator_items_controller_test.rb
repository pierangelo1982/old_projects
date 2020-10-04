require 'test_helper'

class VentilatorItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ventilator_item = ventilator_items(:one)
  end

  test "should get index" do
    get ventilator_items_url
    assert_response :success
  end

  test "should get new" do
    get new_ventilator_item_url
    assert_response :success
  end

  test "should create ventilator_item" do
    assert_difference('VentilatorItem.count') do
      post ventilator_items_url, params: { ventilator_item: { anno: @ventilator_item.anno, compressor_id: @ventilator_item.compressor_id, marca: @ventilator_item.marca, modello: @ventilator_item.modello, note: @ventilator_item.note, potenza: @ventilator_item.potenza } }
    end

    assert_redirected_to ventilator_item_url(VentilatorItem.last)
  end

  test "should show ventilator_item" do
    get ventilator_item_url(@ventilator_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_ventilator_item_url(@ventilator_item)
    assert_response :success
  end

  test "should update ventilator_item" do
    patch ventilator_item_url(@ventilator_item), params: { ventilator_item: { anno: @ventilator_item.anno, compressor_id: @ventilator_item.compressor_id, marca: @ventilator_item.marca, modello: @ventilator_item.modello, note: @ventilator_item.note, potenza: @ventilator_item.potenza } }
    assert_redirected_to ventilator_item_url(@ventilator_item)
  end

  test "should destroy ventilator_item" do
    assert_difference('VentilatorItem.count', -1) do
      delete ventilator_item_url(@ventilator_item)
    end

    assert_redirected_to ventilator_items_url
  end
end

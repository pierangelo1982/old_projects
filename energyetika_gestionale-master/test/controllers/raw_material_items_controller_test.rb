require 'test_helper'

class RawMaterialItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_material_item = raw_material_items(:one)
  end

  test "should get index" do
    get raw_material_items_url
    assert_response :success
  end

  test "should get new" do
    get new_raw_material_item_url
    assert_response :success
  end

  test "should create raw_material_item" do
    assert_difference('RawMaterialItem.count') do
      post raw_material_items_url, params: { raw_material_item: { anno_riferimento: @raw_material_item.anno_riferimento, nome_materia: @raw_material_item.nome_materia, note: @raw_material_item.note, origine_dato: @raw_material_item.origine_dato, quantita: @raw_material_item.quantita, raw_material_id: @raw_material_item.raw_material_id, unita_misura: @raw_material_item.unita_misura } }
    end

    assert_redirected_to raw_material_item_url(RawMaterialItem.last)
  end

  test "should show raw_material_item" do
    get raw_material_item_url(@raw_material_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_raw_material_item_url(@raw_material_item)
    assert_response :success
  end

  test "should update raw_material_item" do
    patch raw_material_item_url(@raw_material_item), params: { raw_material_item: { anno_riferimento: @raw_material_item.anno_riferimento, nome_materia: @raw_material_item.nome_materia, note: @raw_material_item.note, origine_dato: @raw_material_item.origine_dato, quantita: @raw_material_item.quantita, raw_material_id: @raw_material_item.raw_material_id, unita_misura: @raw_material_item.unita_misura } }
    assert_redirected_to raw_material_item_url(@raw_material_item)
  end

  test "should destroy raw_material_item" do
    assert_difference('RawMaterialItem.count', -1) do
      delete raw_material_item_url(@raw_material_item)
    end

    assert_redirected_to raw_material_items_url
  end
end

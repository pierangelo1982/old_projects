require 'test_helper'

class ThermalProductionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thermal_production_item = thermal_production_items(:one)
  end

  test "should get index" do
    get thermal_production_items_url
    assert_response :success
  end

  test "should get new" do
    get new_thermal_production_item_url
    assert_response :success
  end

  test "should create thermal_production_item" do
    assert_difference('ThermalProductionItem.count') do
      post thermal_production_items_url, params: { thermal_production_item: { caldo_freddo: @thermal_production_item.caldo_freddo, dest_acs: @thermal_production_item.dest_acs, matricola: @thermal_production_item.matricola, nome_generatore: @thermal_production_item.nome_generatore, potenza: @thermal_production_item.potenza, thermal_production_id: @thermal_production_item.thermal_production_id, utenza: @thermal_production_item.utenza } }
    end

    assert_redirected_to thermal_production_item_url(ThermalProductionItem.last)
  end

  test "should show thermal_production_item" do
    get thermal_production_item_url(@thermal_production_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_thermal_production_item_url(@thermal_production_item)
    assert_response :success
  end

  test "should update thermal_production_item" do
    patch thermal_production_item_url(@thermal_production_item), params: { thermal_production_item: { caldo_freddo: @thermal_production_item.caldo_freddo, dest_acs: @thermal_production_item.dest_acs, matricola: @thermal_production_item.matricola, nome_generatore: @thermal_production_item.nome_generatore, potenza: @thermal_production_item.potenza, thermal_production_id: @thermal_production_item.thermal_production_id, utenza: @thermal_production_item.utenza } }
    assert_redirected_to thermal_production_item_url(@thermal_production_item)
  end

  test "should destroy thermal_production_item" do
    assert_difference('ThermalProductionItem.count', -1) do
      delete thermal_production_item_url(@thermal_production_item)
    end

    assert_redirected_to thermal_production_items_url
  end
end

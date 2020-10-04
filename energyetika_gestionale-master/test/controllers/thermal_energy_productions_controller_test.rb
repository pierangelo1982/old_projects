require 'test_helper'

class ThermalEnergyProductionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thermal_energy_production = thermal_energy_productions(:one)
  end

  test "should get index" do
    get thermal_energy_productions_url
    assert_response :success
  end

  test "should get new" do
    get new_thermal_energy_production_url
    assert_response :success
  end

  test "should create thermal_energy_production" do
    assert_difference('ThermalEnergyProduction.count') do
      post thermal_energy_productions_url, params: { thermal_energy_production: { company_id: @thermal_energy_production.company_id, note: @thermal_energy_production.note } }
    end

    assert_redirected_to thermal_energy_production_url(ThermalEnergyProduction.last)
  end

  test "should show thermal_energy_production" do
    get thermal_energy_production_url(@thermal_energy_production)
    assert_response :success
  end

  test "should get edit" do
    get edit_thermal_energy_production_url(@thermal_energy_production)
    assert_response :success
  end

  test "should update thermal_energy_production" do
    patch thermal_energy_production_url(@thermal_energy_production), params: { thermal_energy_production: { company_id: @thermal_energy_production.company_id, note: @thermal_energy_production.note } }
    assert_redirected_to thermal_energy_production_url(@thermal_energy_production)
  end

  test "should destroy thermal_energy_production" do
    assert_difference('ThermalEnergyProduction.count', -1) do
      delete thermal_energy_production_url(@thermal_energy_production)
    end

    assert_redirected_to thermal_energy_productions_url
  end
end

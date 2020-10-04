require 'test_helper'

class ThermalProductionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thermal_production = thermal_productions(:one)
  end

  test "should get index" do
    get thermal_productions_url
    assert_response :success
  end

  test "should get new" do
    get new_thermal_production_url
    assert_response :success
  end

  test "should create thermal_production" do
    assert_difference('ThermalProduction.count') do
      post thermal_productions_url, params: { thermal_production: { company_id: @thermal_production.company_id, note: @thermal_production.note } }
    end

    assert_redirected_to thermal_production_url(ThermalProduction.last)
  end

  test "should show thermal_production" do
    get thermal_production_url(@thermal_production)
    assert_response :success
  end

  test "should get edit" do
    get edit_thermal_production_url(@thermal_production)
    assert_response :success
  end

  test "should update thermal_production" do
    patch thermal_production_url(@thermal_production), params: { thermal_production: { company_id: @thermal_production.company_id, note: @thermal_production.note } }
    assert_redirected_to thermal_production_url(@thermal_production)
  end

  test "should destroy thermal_production" do
    assert_difference('ThermalProduction.count', -1) do
      delete thermal_production_url(@thermal_production)
    end

    assert_redirected_to thermal_productions_url
  end
end

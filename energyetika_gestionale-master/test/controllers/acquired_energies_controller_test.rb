require 'test_helper'

class AcquiredEnergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acquired_energy = acquired_energies(:one)
  end

  test "should get index" do
    get acquired_energies_url
    assert_response :success
  end

  test "should get new" do
    get new_acquired_energy_url
    assert_response :success
  end

  test "should create acquired_energy" do
    assert_difference('AcquiredEnergy.count') do
      post acquired_energies_url, params: { acquired_energy: { acquisti: @acquired_energy.acquisti, anno_riferimento: @acquired_energy.anno_riferimento, costo: @acquired_energy.costo, energy_id: @acquired_energy.energy_id, note: @acquired_energy.note, quantita: @acquired_energy.quantita, unita_misura: @acquired_energy.unita_misura } }
    end

    assert_redirected_to acquired_energy_url(AcquiredEnergy.last)
  end

  test "should show acquired_energy" do
    get acquired_energy_url(@acquired_energy)
    assert_response :success
  end

  test "should get edit" do
    get edit_acquired_energy_url(@acquired_energy)
    assert_response :success
  end

  test "should update acquired_energy" do
    patch acquired_energy_url(@acquired_energy), params: { acquired_energy: { acquisti: @acquired_energy.acquisti, anno_riferimento: @acquired_energy.anno_riferimento, costo: @acquired_energy.costo, energy_id: @acquired_energy.energy_id, note: @acquired_energy.note, quantita: @acquired_energy.quantita, unita_misura: @acquired_energy.unita_misura } }
    assert_redirected_to acquired_energy_url(@acquired_energy)
  end

  test "should destroy acquired_energy" do
    assert_difference('AcquiredEnergy.count', -1) do
      delete acquired_energy_url(@acquired_energy)
    end

    assert_redirected_to acquired_energies_url
  end
end

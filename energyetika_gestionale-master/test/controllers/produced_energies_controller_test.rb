require 'test_helper'

class ProducedEnergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produced_energy = produced_energies(:one)
  end

  test "should get index" do
    get produced_energies_url
    assert_response :success
  end

  test "should get new" do
    get new_produced_energy_url
    assert_response :success
  end

  test "should create produced_energy" do
    assert_difference('ProducedEnergy.count') do
      post produced_energies_url, params: { produced_energy: { anno_riferimento: @produced_energy.anno_riferimento, costo: @produced_energy.costo, energy_id: @produced_energy.energy_id, fonte: @produced_energy.fonte, produzione: @produced_energy.produzione, quantita: @produced_energy.quantita, unita_misura: @produced_energy.unita_misura } }
    end

    assert_redirected_to produced_energy_url(ProducedEnergy.last)
  end

  test "should show produced_energy" do
    get produced_energy_url(@produced_energy)
    assert_response :success
  end

  test "should get edit" do
    get edit_produced_energy_url(@produced_energy)
    assert_response :success
  end

  test "should update produced_energy" do
    patch produced_energy_url(@produced_energy), params: { produced_energy: { anno_riferimento: @produced_energy.anno_riferimento, costo: @produced_energy.costo, energy_id: @produced_energy.energy_id, fonte: @produced_energy.fonte, produzione: @produced_energy.produzione, quantita: @produced_energy.quantita, unita_misura: @produced_energy.unita_misura } }
    assert_redirected_to produced_energy_url(@produced_energy)
  end

  test "should destroy produced_energy" do
    assert_difference('ProducedEnergy.count', -1) do
      delete produced_energy_url(@produced_energy)
    end

    assert_redirected_to produced_energies_url
  end
end

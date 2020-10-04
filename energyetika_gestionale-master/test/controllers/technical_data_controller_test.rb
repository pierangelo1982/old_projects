require 'test_helper'

class TechnicalDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technical_datum = technical_data(:one)
  end

  test "should get index" do
    get technical_data_url
    assert_response :success
  end

  test "should get new" do
    get new_technical_datum_url
    assert_response :success
  end

  test "should create technical_datum" do
    assert_difference('TechnicalDatum.count') do
      post technical_data_url, params: { technical_datum: { company_id: @technical_datum.company_id, descrizione: @technical_datum.descrizione, dimensione_piazzale: @technical_datum.dimensione_piazzale, dimensione_uffici: @technical_datum.dimensione_uffici, numero_impiegati: @technical_datum.numero_impiegati, numero_operai: @technical_datum.numero_operai, presenza_docce: @technical_datum.presenza_docce, servizi_igenici: @technical_datum.servizi_igenici, superficie_magazzini: @technical_datum.superficie_magazzini, superficie_produzione: @technical_datum.superficie_produzione, superficie_totale: @technical_datum.superficie_totale, superficie_uffici: @technical_datum.superficie_uffici, volume_magazzini: @technical_datum.volume_magazzini, volume_produzione: @technical_datum.volume_produzione, volume_totale: @technical_datum.volume_totale, volume_uffici: @technical_datum.volume_uffici } }
    end

    assert_redirected_to technical_datum_url(TechnicalDatum.last)
  end

  test "should show technical_datum" do
    get technical_datum_url(@technical_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_technical_datum_url(@technical_datum)
    assert_response :success
  end

  test "should update technical_datum" do
    patch technical_datum_url(@technical_datum), params: { technical_datum: { company_id: @technical_datum.company_id, descrizione: @technical_datum.descrizione, dimensione_piazzale: @technical_datum.dimensione_piazzale, dimensione_uffici: @technical_datum.dimensione_uffici, numero_impiegati: @technical_datum.numero_impiegati, numero_operai: @technical_datum.numero_operai, presenza_docce: @technical_datum.presenza_docce, servizi_igenici: @technical_datum.servizi_igenici, superficie_magazzini: @technical_datum.superficie_magazzini, superficie_produzione: @technical_datum.superficie_produzione, superficie_totale: @technical_datum.superficie_totale, superficie_uffici: @technical_datum.superficie_uffici, volume_magazzini: @technical_datum.volume_magazzini, volume_produzione: @technical_datum.volume_produzione, volume_totale: @technical_datum.volume_totale, volume_uffici: @technical_datum.volume_uffici } }
    assert_redirected_to technical_datum_url(@technical_datum)
  end

  test "should destroy technical_datum" do
    assert_difference('TechnicalDatum.count', -1) do
      delete technical_datum_url(@technical_datum)
    end

    assert_redirected_to technical_data_url
  end
end

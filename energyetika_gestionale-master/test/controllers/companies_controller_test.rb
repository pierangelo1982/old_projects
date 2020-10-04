require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { admin_id: @company.admin_id, bolletta: @company.bolletta, cap: @company.cap, citta: @company.citta, codfisc: @company.codfisc, denominazione: @company.denominazione, descrizione: @company.descrizione, email: @company.email, fatturato: @company.fatturato, fax: @company.fax, indirizzo: @company.indirizzo, iscrizione_elenco_energivori: @company.iscrizione_elenco_energivori, n_dipendenti: @company.n_dipendenti, n_impianti_produttivi: @company.n_impianti_produttivi, note: @company.note, piva: @company.piva, provincia: @company.provincia, telefono: @company.telefono, visura: @company.visura, web: @company.web } }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { admin_id: @company.admin_id, bolletta: @company.bolletta, cap: @company.cap, citta: @company.citta, codfisc: @company.codfisc, denominazione: @company.denominazione, descrizione: @company.descrizione, email: @company.email, fatturato: @company.fatturato, fax: @company.fax, indirizzo: @company.indirizzo, iscrizione_elenco_energivori: @company.iscrizione_elenco_energivori, n_dipendenti: @company.n_dipendenti, n_impianti_produttivi: @company.n_impianti_produttivi, note: @company.note, piva: @company.piva, provincia: @company.provincia, telefono: @company.telefono, visura: @company.visura, web: @company.web } }
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end

require 'test_helper'

class UtilityItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utility_item = utility_items(:one)
  end

  test "should get index" do
    get utility_items_url
    assert_response :success
  end

  test "should get new" do
    get new_utility_item_url
    assert_response :success
  end

  test "should create utility_item" do
    assert_difference('UtilityItem.count') do
      post utility_items_url, params: { utility_item: { ausiliari: @utility_item.ausiliari, funzione: @utility_item.funzione, marca: @utility_item.marca, matricola: @utility_item.matricola, nome: @utility_item.nome, ore: @utility_item.ore, potenza: @utility_item.potenza, utility_id: @utility_item.utility_id, vettore: @utility_item.vettore } }
    end

    assert_redirected_to utility_item_url(UtilityItem.last)
  end

  test "should show utility_item" do
    get utility_item_url(@utility_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_utility_item_url(@utility_item)
    assert_response :success
  end

  test "should update utility_item" do
    patch utility_item_url(@utility_item), params: { utility_item: { ausiliari: @utility_item.ausiliari, funzione: @utility_item.funzione, marca: @utility_item.marca, matricola: @utility_item.matricola, nome: @utility_item.nome, ore: @utility_item.ore, potenza: @utility_item.potenza, utility_id: @utility_item.utility_id, vettore: @utility_item.vettore } }
    assert_redirected_to utility_item_url(@utility_item)
  end

  test "should destroy utility_item" do
    assert_difference('UtilityItem.count', -1) do
      delete utility_item_url(@utility_item)
    end

    assert_redirected_to utility_items_url
  end
end

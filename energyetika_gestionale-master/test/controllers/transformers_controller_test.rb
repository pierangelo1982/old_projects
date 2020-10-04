require 'test_helper'

class TransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transformer = transformers(:one)
  end

  test "should get index" do
    get transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_transformer_url
    assert_response :success
  end

  test "should create transformer" do
    assert_difference('Transformer.count') do
      post transformers_url, params: { transformer: { cabine_media_tensione: @transformer.cabine_media_tensione, company_id: @transformer.company_id, note: @transformer.note, numero_cabine: @transformer.numero_cabine } }
    end

    assert_redirected_to transformer_url(Transformer.last)
  end

  test "should show transformer" do
    get transformer_url(@transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_transformer_url(@transformer)
    assert_response :success
  end

  test "should update transformer" do
    patch transformer_url(@transformer), params: { transformer: { cabine_media_tensione: @transformer.cabine_media_tensione, company_id: @transformer.company_id, note: @transformer.note, numero_cabine: @transformer.numero_cabine } }
    assert_redirected_to transformer_url(@transformer)
  end

  test "should destroy transformer" do
    assert_difference('Transformer.count', -1) do
      delete transformer_url(@transformer)
    end

    assert_redirected_to transformers_url
  end
end

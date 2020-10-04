require 'test_helper'

class CompressorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compressor = compressors(:one)
  end

  test "should get index" do
    get compressors_url
    assert_response :success
  end

  test "should get new" do
    get new_compressor_url
    assert_response :success
  end

  test "should create compressor" do
    assert_difference('Compressor.count') do
      post compressors_url, params: { compressor: { company_id: @compressor.company_id, note: @compressor.note } }
    end

    assert_redirected_to compressor_url(Compressor.last)
  end

  test "should show compressor" do
    get compressor_url(@compressor)
    assert_response :success
  end

  test "should get edit" do
    get edit_compressor_url(@compressor)
    assert_response :success
  end

  test "should update compressor" do
    patch compressor_url(@compressor), params: { compressor: { company_id: @compressor.company_id, note: @compressor.note } }
    assert_redirected_to compressor_url(@compressor)
  end

  test "should destroy compressor" do
    assert_difference('Compressor.count', -1) do
      delete compressor_url(@compressor)
    end

    assert_redirected_to compressors_url
  end
end

require 'test_helper'

class WalkingHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walking_hour = walking_hours(:one)
  end

  test "should get index" do
    get walking_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_walking_hour_url
    assert_response :success
  end

  test "should create walking_hour" do
    assert_difference('WalkingHour.count') do
      post walking_hours_url, params: { walking_hour: { anno_riferimento: @walking_hour.anno_riferimento, note: @walking_hour.note, ore_marcia: @walking_hour.ore_marcia, origine_dato: @walking_hour.origine_dato, raw_material_id: @walking_hour.raw_material_id, unita_misura: @walking_hour.unita_misura, veicolo: @walking_hour.veicolo } }
    end

    assert_redirected_to walking_hour_url(WalkingHour.last)
  end

  test "should show walking_hour" do
    get walking_hour_url(@walking_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_walking_hour_url(@walking_hour)
    assert_response :success
  end

  test "should update walking_hour" do
    patch walking_hour_url(@walking_hour), params: { walking_hour: { anno_riferimento: @walking_hour.anno_riferimento, note: @walking_hour.note, ore_marcia: @walking_hour.ore_marcia, origine_dato: @walking_hour.origine_dato, raw_material_id: @walking_hour.raw_material_id, unita_misura: @walking_hour.unita_misura, veicolo: @walking_hour.veicolo } }
    assert_redirected_to walking_hour_url(@walking_hour)
  end

  test "should destroy walking_hour" do
    assert_difference('WalkingHour.count', -1) do
      delete walking_hour_url(@walking_hour)
    end

    assert_redirected_to walking_hours_url
  end
end

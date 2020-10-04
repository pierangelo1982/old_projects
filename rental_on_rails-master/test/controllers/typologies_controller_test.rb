require 'test_helper'

class TypologiesControllerTest < ActionController::TestCase
  setup do
    @typology = typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typology" do
    assert_difference('Typology.count') do
      post :create, typology: { name: @typology.name }
    end

    assert_redirected_to typology_path(assigns(:typology))
  end

  test "should show typology" do
    get :show, id: @typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typology
    assert_response :success
  end

  test "should update typology" do
    patch :update, id: @typology, typology: { name: @typology.name }
    assert_redirected_to typology_path(assigns(:typology))
  end

  test "should destroy typology" do
    assert_difference('Typology.count', -1) do
      delete :destroy, id: @typology
    end

    assert_redirected_to typologies_path
  end
end

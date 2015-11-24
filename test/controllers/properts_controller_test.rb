require 'test_helper'

class PropertsControllerTest < ActionController::TestCase
  setup do
    @propert = properts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propert" do
    assert_difference('Propert.count') do
      post :create, propert: { code: @propert.code, name: @propert.name, value: @propert.value }
    end

    assert_redirected_to propert_path(assigns(:propert))
  end

  test "should show propert" do
    get :show, id: @propert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propert
    assert_response :success
  end

  test "should update propert" do
    patch :update, id: @propert, propert: { code: @propert.code, name: @propert.name, value: @propert.value }
    assert_redirected_to propert_path(assigns(:propert))
  end

  test "should destroy propert" do
    assert_difference('Propert.count', -1) do
      delete :destroy, id: @propert
    end

    assert_redirected_to properts_path
  end
end

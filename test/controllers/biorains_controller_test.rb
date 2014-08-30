require 'test_helper'

class BiorainsControllerTest < ActionController::TestCase
  setup do
    @biorain = biorains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biorains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biorain" do
    assert_difference('Biorain.count') do
      post :create, biorain: { description: @biorain.description }
    end

    assert_redirected_to biorain_path(assigns(:biorain))
  end

  test "should show biorain" do
    get :show, id: @biorain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biorain
    assert_response :success
  end

  test "should update biorain" do
    patch :update, id: @biorain, biorain: { description: @biorain.description }
    assert_redirected_to biorain_path(assigns(:biorain))
  end

  test "should destroy biorain" do
    assert_difference('Biorain.count', -1) do
      delete :destroy, id: @biorain
    end

    assert_redirected_to biorains_path
  end
end

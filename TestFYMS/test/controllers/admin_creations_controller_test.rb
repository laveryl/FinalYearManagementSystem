require 'test_helper'

class AdminCreationsControllerTest < ActionController::TestCase
  setup do
    @admin_creation = admin_creations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_creations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_creation" do
    assert_difference('AdminCreation.count') do
      post :create, admin_creation: { email: @admin_creation.email, name: @admin_creation.name, password: @admin_creation.password }
    end

    assert_redirected_to admin_creation_path(assigns(:admin_creation))
  end

  test "should show admin_creation" do
    get :show, id: @admin_creation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_creation
    assert_response :success
  end

  test "should update admin_creation" do
    patch :update, id: @admin_creation, admin_creation: { email: @admin_creation.email, name: @admin_creation.name, password: @admin_creation.password }
    assert_redirected_to admin_creation_path(assigns(:admin_creation))
  end

  test "should destroy admin_creation" do
    assert_difference('AdminCreation.count', -1) do
      delete :destroy, id: @admin_creation
    end

    assert_redirected_to admin_creations_path
  end
end

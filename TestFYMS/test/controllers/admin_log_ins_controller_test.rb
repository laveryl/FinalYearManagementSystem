require 'test_helper'

class AdminLogInsControllerTest < ActionController::TestCase
  setup do
    @admin_log_in = admin_log_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_log_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_log_in" do
    assert_difference('AdminLogIn.count') do
      post :create, admin_log_in: { email: @admin_log_in.email, name: @admin_log_in.name, password: @admin_log_in.password }
    end

    assert_redirected_to admin_log_in_path(assigns(:admin_log_in))
  end

  test "should show admin_log_in" do
    get :show, id: @admin_log_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_log_in
    assert_response :success
  end

  test "should update admin_log_in" do
    patch :update, id: @admin_log_in, admin_log_in: { email: @admin_log_in.email, name: @admin_log_in.name, password: @admin_log_in.password }
    assert_redirected_to admin_log_in_path(assigns(:admin_log_in))
  end

  test "should destroy admin_log_in" do
    assert_difference('AdminLogIn.count', -1) do
      delete :destroy, id: @admin_log_in
    end

    assert_redirected_to admin_log_ins_path
  end
end

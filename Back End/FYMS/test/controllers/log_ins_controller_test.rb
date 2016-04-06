require 'test_helper'

class LogInsControllerTest < ActionController::TestCase
  setup do
    @log_in = log_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:log_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log_in" do
    assert_difference('LogIn.count') do
      post :create, log_in: { email: @log_in.email, password: @log_in.password }
    end

    assert_redirected_to log_in_path(assigns(:log_in))
  end

  test "should show log_in" do
    get :show, id: @log_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log_in
    assert_response :success
  end

  test "should update log_in" do
    patch :update, id: @log_in, log_in: { email: @log_in.email, password: @log_in.password }
    assert_redirected_to log_in_path(assigns(:log_in))
  end

  test "should destroy log_in" do
    assert_difference('LogIn.count', -1) do
      delete :destroy, id: @log_in
    end

    assert_redirected_to log_ins_path
  end
end

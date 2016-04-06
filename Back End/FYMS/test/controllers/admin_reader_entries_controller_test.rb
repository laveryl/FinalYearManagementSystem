require 'test_helper'

class AdminReaderEntriesControllerTest < ActionController::TestCase
  setup do
    @admin_reader_entry = admin_reader_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_reader_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_reader_entry" do
    assert_difference('AdminReaderEntry.count') do
      post :create, admin_reader_entry: { 2nd_reading: @admin_reader_entry.2nd_reading, 3rd_reading: @admin_reader_entry.3rd_reading, NumberProjectsSupervised: @admin_reader_entry.NumberProjectsSupervised, Staff_ID: @admin_reader_entry.Staff_ID, availability: @admin_reader_entry.availability, email: @admin_reader_entry.email, name: @admin_reader_entry.name, office_location: @admin_reader_entry.office_location, school: @admin_reader_entry.school }
    end

    assert_redirected_to admin_reader_entry_path(assigns(:admin_reader_entry))
  end

  test "should show admin_reader_entry" do
    get :show, id: @admin_reader_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_reader_entry
    assert_response :success
  end

  test "should update admin_reader_entry" do
    patch :update, id: @admin_reader_entry, admin_reader_entry: { 2nd_reading: @admin_reader_entry.2nd_reading, 3rd_reading: @admin_reader_entry.3rd_reading, NumberProjectsSupervised: @admin_reader_entry.NumberProjectsSupervised, Staff_ID: @admin_reader_entry.Staff_ID, availability: @admin_reader_entry.availability, email: @admin_reader_entry.email, name: @admin_reader_entry.name, office_location: @admin_reader_entry.office_location, school: @admin_reader_entry.school }
    assert_redirected_to admin_reader_entry_path(assigns(:admin_reader_entry))
  end

  test "should destroy admin_reader_entry" do
    assert_difference('AdminReaderEntry.count', -1) do
      delete :destroy, id: @admin_reader_entry
    end

    assert_redirected_to admin_reader_entries_path
  end
end

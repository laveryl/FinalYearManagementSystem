require 'test_helper'

class ReaderEntriesControllerTest < ActionController::TestCase
  setup do
    @reader_entry = reader_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reader_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reader_entry" do
    assert_difference('ReaderEntry.count') do
      post :create, reader_entry: { NumberProjectsSupervised: @reader_entry.NumberProjectsSupervised, Staff_ID: @reader_entry.Staff_ID, availability: @reader_entry.availability, email: @reader_entry.email, name: @reader_entry.name, office_location: @reader_entry.office_location, school: @reader_entry.school, secondReading: @reader_entry.secondReading, thirdReading: @reader_entry.thirdReading }
    end

    assert_redirected_to reader_entry_path(assigns(:reader_entry))
  end

  test "should show reader_entry" do
    get :show, id: @reader_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reader_entry
    assert_response :success
  end

  test "should update reader_entry" do
    patch :update, id: @reader_entry, reader_entry: { NumberProjectsSupervised: @reader_entry.NumberProjectsSupervised, Staff_ID: @reader_entry.Staff_ID, availability: @reader_entry.availability, email: @reader_entry.email, name: @reader_entry.name, office_location: @reader_entry.office_location, school: @reader_entry.school, secondReading: @reader_entry.secondReading, thirdReading: @reader_entry.thirdReading }
    assert_redirected_to reader_entry_path(assigns(:reader_entry))
  end

  test "should destroy reader_entry" do
    assert_difference('ReaderEntry.count', -1) do
      delete :destroy, id: @reader_entry
    end

    assert_redirected_to reader_entries_path
  end
end

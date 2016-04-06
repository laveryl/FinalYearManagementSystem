json.array!(@admin_reader_entries) do |admin_reader_entry|
  json.extract! admin_reader_entry, :id, :Staff_ID, :name, :school, :office_location, :email, :availability, :NumberProjectsSupervised, :2nd_reading, :3rd_reading
  json.url admin_reader_entry_url(admin_reader_entry, format: :json)
end

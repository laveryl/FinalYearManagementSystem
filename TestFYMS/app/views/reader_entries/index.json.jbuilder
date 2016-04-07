json.array!(@reader_entries) do |reader_entry|
  json.extract! reader_entry, :id, :Staff_ID, :name, :school, :office_location, :email, :availability, :NumberProjectsSupervised, :secondReading, :thirdReading
  json.url reader_entry_url(reader_entry, format: :json)
end

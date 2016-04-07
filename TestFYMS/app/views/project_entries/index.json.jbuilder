json.array!(@project_entries) do |project_entry|
  json.extract! project_entry, :id, :Project_ID, :project_name, :student_no, :firstReader, :secondReader, :thirdReader
  json.url project_entry_url(project_entry, format: :json)
end

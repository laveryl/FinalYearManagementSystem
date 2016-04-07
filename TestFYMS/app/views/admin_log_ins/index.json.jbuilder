json.array!(@admin_log_ins) do |admin_log_in|
  json.extract! admin_log_in, :id, :name, :email, :password
  json.url admin_log_in_url(admin_log_in, format: :json)
end

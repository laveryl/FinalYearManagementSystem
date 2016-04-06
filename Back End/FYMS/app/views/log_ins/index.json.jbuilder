json.array!(@log_ins) do |log_in|
  json.extract! log_in, :id, :email, :password
  json.url log_in_url(log_in, format: :json)
end

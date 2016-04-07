json.array!(@admin_creations) do |admin_creation|
  json.extract! admin_creation, :id, :name, :email, :password
  json.url admin_creation_url(admin_creation, format: :json)
end

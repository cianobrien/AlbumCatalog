json.array!(@followships) do |followship|
  json.extract! followship, :id, :user_id, :profile_id
  json.url followship_url(followship, format: :json)
end

json.array!(@friendships) do |friendship|
  json.extract! friendship, :id, :profile_1_id, :profile_2_id
  json.url friendship_url(friendship, format: :json)
end

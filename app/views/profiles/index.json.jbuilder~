json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :profile_picture_url
  json.url profile_url(profile, format: :json)
end

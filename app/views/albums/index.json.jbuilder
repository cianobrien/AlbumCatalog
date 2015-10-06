json.array!(@albums) do |album|
  json.extract! album, :id, :name, :artist, :tracks, :year, :image_url
  json.url album_url(album, format: :json)
end

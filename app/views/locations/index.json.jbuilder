json.array!(@locations) do |location|
  json.extract! location, :id, :longitude, :latitude, :time, :pet_id
  json.url location_url(location, format: :json)
end

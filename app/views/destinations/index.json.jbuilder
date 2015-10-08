json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :address, :longitude, :latitude, :pet_id
  json.url destination_url(destination, format: :json)
end

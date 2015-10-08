json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :password_digest, :address, :home_phone, :cell_phone, :longitude, :latitude
  json.url user_url(user, format: :json)
end

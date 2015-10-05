json.array!(@pets) do |pet|
  json.extract! pet, :id, :first_name, :last_name, :birth_place, :birth_date, :breed, :tracking_uid, :user_id
  json.url pet_url(pet, format: :json)
end

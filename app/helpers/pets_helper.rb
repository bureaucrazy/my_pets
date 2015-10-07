module PetsHelper

  def pet_age(birth_date)
    age = (Date.today - birth_date.to_date).to_i
    if age >= 365 then
      "#{age / 365} year old"
    else
      "#{age} day old"
    end
  end

  def where_am_i_now(pet)
    if pet.locations.empty?
      "No tracking data found."
    else
      "#{pet.locations.last.longitude} x #{pet.locations.last.latitude} @ #{pet.locations.last.time.strftime("%x %r")}"
    end
  end

end

class Destination < ActiveRecord::Base
  belongs_to :pet

  validates :name, presence: true
  validates :address, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end

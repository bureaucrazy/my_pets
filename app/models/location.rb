class Location < ActiveRecord::Base
  belongs_to :pet

  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :time, presence: true
end

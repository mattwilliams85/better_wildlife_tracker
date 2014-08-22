class Region < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness=> true
  has_many :sightings
  has_many :animals, through: :sightings
end

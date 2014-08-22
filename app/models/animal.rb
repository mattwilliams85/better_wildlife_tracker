class Animal < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness=> true
  has_many :sightings
  has_many :regions, through: :sightings
end


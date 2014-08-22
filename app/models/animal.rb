class Animal < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => { :message => 'is already taken!' }
  has_many :sightings
  has_many :regions, through: :sightings
end


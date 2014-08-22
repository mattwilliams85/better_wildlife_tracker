class Sighting < ActiveRecord::Base
  validate :latitude_range
  validate :longitude_range

  belongs_to :animal
  belongs_to :region

  def latitude_range

    if !latitude?
      errors.add(:latitude, "can't be blank")
    elsif latitude <= -180  || latitude >=180
      errors.add(:latitude, "can't less than -180 or more than 180")
    end

  end

  def longitude_range
    if !longitude?
      errors.add(:longitude, "can't be blank")
    elsif longitude <= -90  || longitude >=90
      errors.add(:longitude, "can't less than -90 or more than 90")
    end
  end
end

class SightingsController < ApplicationController

  def new_sighting
    @regions = Region.all.order("name")
    @animals = Animal.all.order("name")
    @sighting = Sighting.new
    render('sightings/new_sighting')
  end

  def create_sighting
    @regions = Region.all.order("name")
    @animals = Animal.all.order("name")
    @sighting = Sighting.create(:animal_id => params[:animal][:id],
                                :region_id => params[:region][:id],
                                :latitude => params[:latitude],
                                :longitude => params[:longitude]
                                )
    render('sightings/new_sighting')
  end

end




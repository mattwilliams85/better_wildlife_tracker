class ApplicationController < ActionController::Base

  def index
    @animals = Animal.all
    @regions = Region.all
    @sightings = Sighting.all
    render('/index')
  end

end

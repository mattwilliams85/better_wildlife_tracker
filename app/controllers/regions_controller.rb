class RegionsController < ApplicationController

  def new_region
    @region = Region.new
    render('regions/new_region')
  end

  def create_region
    @region = Region.create(:name => params[:name].downcase.capitalize)
    render('regions/new_region')
  end

end

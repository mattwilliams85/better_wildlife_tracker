class AnimalsController < ApplicationController

  def new_animal
    @animal = Animal.new
    render('animals/new_animal')
  end

  def create_animal
    @animal = Animal.create(:name => params[:name].downcase.capitalize)
    render('animals/new_animal')
  end

end

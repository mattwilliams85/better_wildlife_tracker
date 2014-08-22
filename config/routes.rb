Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'application#index'})
  match('animals/new_animal', {:via => :get, :to => 'animals#new_animal'})
  match('regions/new_region', {:via => :get, :to => 'regions#new_region'})
  match('sightings/new_sighting', {:via => :get, :to => 'sightings#new_sighting'})
  match('/animals', {:via => :post, :to => 'animals#create_animal'})
  match('/regions', {:via => :post, :to => 'regions#create_region'})
  match('/sightings', {:via => :post, :to => 'sightings#create_sighting'})
end


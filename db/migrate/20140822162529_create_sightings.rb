class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :animal_id, :int
      t.column :region_id, :int
      t.column :latitude, :float
      t.column :longitude, :float

      t.timestamps
    end
  end
end

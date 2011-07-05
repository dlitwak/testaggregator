class AddStartLocationEndLocationToVoyages < ActiveRecord::Migration
  def self.up
    add_column :voyages, :start_location, :string
    add_column :voyages, :end_location, :string
  end

  def self.down
    remove_column :voyages, :end_location
    remove_column :voyages, :start_location
  end
end

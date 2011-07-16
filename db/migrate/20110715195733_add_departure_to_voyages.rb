class AddDepartureToVoyages < ActiveRecord::Migration
  def self.up
    add_column :voyages, :departure, :string
  end

  def self.down
    remove_column :voyages, :departure
  end
end

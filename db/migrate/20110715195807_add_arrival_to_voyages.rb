class AddArrivalToVoyages < ActiveRecord::Migration
  def self.up
    add_column :voyages, :arrival, :string
  end

  def self.down
    remove_column :voyages, :arrival
  end
end

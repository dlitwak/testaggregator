class AddVehiclesToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :vehicles, :string
  end

  def self.down
    remove_column :results, :vehicles
  end
end

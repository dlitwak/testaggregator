class AddBusToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :bus, :boolean
  end

  def self.down
    remove_column :results, :bus
  end
end

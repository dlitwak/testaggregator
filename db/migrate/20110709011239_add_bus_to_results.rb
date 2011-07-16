class AddBusToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :bus, :integer
  end

  def self.down
    remove_column :results, :bus
  end
end

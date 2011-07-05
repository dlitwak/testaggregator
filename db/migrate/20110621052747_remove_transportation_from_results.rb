class RemoveTransportationFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :transportation
  end

  def self.down
    add_column :results, :transportation, :string
  end
end

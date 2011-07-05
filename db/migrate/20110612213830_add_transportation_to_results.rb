class AddTransportationToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :transportation, :string
  end

  def self.down
    remove_column :results, :transportation
  end
end

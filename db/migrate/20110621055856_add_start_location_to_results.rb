class AddStartLocationToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_location, :string
  end

  def self.down
    remove_column :results, :start_location
  end
end

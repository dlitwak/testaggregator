class AddEndLocationToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :end_location, :string
  end

  def self.down
    remove_column :results, :end_location
  end
end

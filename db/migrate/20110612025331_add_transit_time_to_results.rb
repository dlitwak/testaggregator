class AddTransitTimeToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :transit_time, :float
  end

  def self.down
    remove_column :results, :transit_time
  end
end

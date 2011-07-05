class AddStartTimeToVoyage < ActiveRecord::Migration
  def self.up
    add_column :voyages, :start_time, :time
  end

  def self.down
    remove_column :voyages, :start_time
  end
end

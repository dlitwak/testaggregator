class AddEndTimeToVoyage < ActiveRecord::Migration
  def self.up
    add_column :voyages, :end_time, :time
  end

  def self.down
    remove_column :voyages, :end_time
  end
end

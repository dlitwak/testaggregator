class RemoveStartDateTimeFromVoyage < ActiveRecord::Migration
  def self.up
    remove_column :voyages, :start_date_time
  end

  def self.down
    add_column :voyages, :start_date_time, :datetime
  end
end

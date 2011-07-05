class RemoveEndDateTimeFromVoyage < ActiveRecord::Migration
  def self.up
    remove_column :voyages, :end_date_time
  end

  def self.down
    add_column :voyages, :end_date_time, :datetime
  end
end

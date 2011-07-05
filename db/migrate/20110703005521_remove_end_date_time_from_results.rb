class RemoveEndDateTimeFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :end_date_time
  end

  def self.down
    add_column :results, :end_date_time, :datetime
  end
end

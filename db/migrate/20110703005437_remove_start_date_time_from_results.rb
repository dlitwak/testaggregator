class RemoveStartDateTimeFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :start_date_time
  end

  def self.down
    add_column :results, :start_date_time, :datetime
  end
end

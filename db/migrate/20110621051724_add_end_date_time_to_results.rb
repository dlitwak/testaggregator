class AddEndDateTimeToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :end_date_time, :datetime
  end

  def self.down
    remove_column :results, :end_date_time
  end
end

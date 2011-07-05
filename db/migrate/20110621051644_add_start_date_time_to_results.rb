class AddStartDateTimeToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_date_time, :datetime
  end

  def self.down
    remove_column :results, :start_date_time
  end
end

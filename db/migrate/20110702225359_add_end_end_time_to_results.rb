class AddEndEndTimeToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :end_time, :time
  end

  def self.down
    remove_column :results, :end_time
  end
end

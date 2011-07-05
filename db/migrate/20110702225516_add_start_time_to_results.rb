class AddStartTimeToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_time, :time
  end

  def self.down
    remove_column :results, :start_time
  end
end

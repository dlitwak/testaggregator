class RemoveStartTimeFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :start_time
  end

  def self.down
    add_column :results, :start_time, :string
  end
end

class RemoveEndTimeFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :end_time
  end

  def self.down
    add_column :results, :end_time, :string
  end
end

class RemoveStartDateFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :start_date
  end

  def self.down
    add_column :results, :start_date, :string
  end
end

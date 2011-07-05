class AddStartDateToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_date, :date
  end

  def self.down
    remove_column :results, :start_date
  end
end

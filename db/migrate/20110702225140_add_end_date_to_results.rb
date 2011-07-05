class AddEndDateToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :end_date, :date
  end

  def self.down
    remove_column :results, :end_date
  end
end

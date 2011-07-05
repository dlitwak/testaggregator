class RemoveEndDateFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :end_date
  end

  def self.down
    add_column :results, :end_date, :string
  end
end

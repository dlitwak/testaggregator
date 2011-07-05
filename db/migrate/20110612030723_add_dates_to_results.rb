class AddDatesToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_date, :string
    add_column :results, :end_date, :string
  end

  def self.down
    remove_column :results, :end_date
    remove_column :results, :start_date
  end
end

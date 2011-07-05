class AddStartDateToVoyage < ActiveRecord::Migration
  def self.up
    add_column :voyages, :start_date, :date
  end

  def self.down
    remove_column :voyages, :start_date
  end
end

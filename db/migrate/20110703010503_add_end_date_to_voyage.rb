class AddEndDateToVoyage < ActiveRecord::Migration
  def self.up
    add_column :voyages, :end_date, :date
  end

  def self.down
    remove_column :voyages, :end_date
  end
end

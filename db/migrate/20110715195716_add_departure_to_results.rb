class AddDepartureToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :departure, :string
  end

  def self.down
    remove_column :results, :departure
  end
end

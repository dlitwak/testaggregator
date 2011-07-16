class AddArrivalToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :arrival, :string
  end

  def self.down
    remove_column :results, :arrival
  end
end

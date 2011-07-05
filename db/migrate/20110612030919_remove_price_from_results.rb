class RemovePriceFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :price
  end

  def self.down
    add_column :results, :price, :float
  end
end

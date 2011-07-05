class CreateInbetweeners < ActiveRecord::Migration
  def self.up
    create_table :inbetweeners do |t|
      t.integer :id
      t.string :company
      t.float :taxi_price
      t.float :shuttle_price
      t.float :train_price
      t.float :bus_price

      t.timestamps
    end
  end

  def self.down
    drop_table :inbetweeners
  end
end

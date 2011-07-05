class CreateVoyages < ActiveRecord::Migration
  def self.up
    create_table :voyages do |t|
      t.float :escore
      t.float :real_price
      t.integer :position
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.integer :stops
      t.float :price_tag
      t.float :transit_time
      t.string :transportation

      t.timestamps
    end
  end

  def self.down
    drop_table :voyages
  end
end

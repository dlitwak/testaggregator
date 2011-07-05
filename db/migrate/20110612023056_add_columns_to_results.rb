class AddColumnsToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :start_time, :string
    add_column :results, :end_time, :string
    add_column :results, :stops, :integer
    add_column :results, :price_tag, :float
    add_column :results, :type, :string
  end

  def self.down
    remove_column :results, :type
    remove_column :results, :price_tag
    remove_column :results, :stops
    remove_column :results, :end_time
    remove_column :results, :start_time
  end
end

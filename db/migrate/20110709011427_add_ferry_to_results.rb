class AddFerryToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :ferry, :integer
  end

  def self.down
    remove_column :results, :ferry
  end
end

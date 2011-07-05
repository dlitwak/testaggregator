class AddPositionToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :position, :integer
  end

  def self.down
    remove_column :results, :position
  end
end

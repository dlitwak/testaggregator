class AddPlaneToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :plane, :integer
  end

  def self.down
    remove_column :results, :plane
  end
end

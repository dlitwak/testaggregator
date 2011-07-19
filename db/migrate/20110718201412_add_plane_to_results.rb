class AddPlaneToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :plane, :boolean
  end

  def self.down
    remove_column :results, :plane
  end
end

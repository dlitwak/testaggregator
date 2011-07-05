class AddResultIdToVoyages < ActiveRecord::Migration
  def self.up
    add_column :voyages, :result_id, :integer
  end

  def self.down
    remove_column :voyages, :result_id
  end
end

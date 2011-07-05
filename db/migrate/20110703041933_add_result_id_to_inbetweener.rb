class AddResultIdToInbetweener < ActiveRecord::Migration
  def self.up
    add_column :inbetweeners, :result_id, :integer
  end

  def self.down
    remove_column :inbetweeners, :result_id
  end
end

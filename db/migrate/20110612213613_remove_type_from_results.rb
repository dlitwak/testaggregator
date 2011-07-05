class RemoveTypeFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :type
  end

  def self.down
    add_column :results, :type, :string
  end
end

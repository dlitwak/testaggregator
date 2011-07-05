class AddStartNameToInbetweeners < ActiveRecord::Migration
  def self.up
    add_column :inbetweeners, :start_name, :string
  end

  def self.down
    remove_column :inbetweeners, :start_name
  end
end

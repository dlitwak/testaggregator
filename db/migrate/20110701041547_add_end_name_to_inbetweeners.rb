class AddEndNameToInbetweeners < ActiveRecord::Migration
  def self.up
    add_column :inbetweeners, :end_name, :string
  end

  def self.down
    remove_column :inbetweeners, :end_name
  end
end

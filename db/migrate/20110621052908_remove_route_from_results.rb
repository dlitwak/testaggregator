class RemoveRouteFromResults < ActiveRecord::Migration
  def self.up
    remove_column :results, :route
  end

  def self.down
    add_column :results, :route, :string
  end
end

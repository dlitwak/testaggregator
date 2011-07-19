class AddTrainToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :train, :boolean
  end

  def self.down
    remove_column :results, :train
  end
end

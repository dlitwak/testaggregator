class AddCompanyToVoyages < ActiveRecord::Migration
  def self.up
    add_column :voyages, :company, :string
  end

  def self.down
    remove_column :voyages, :company
  end
end

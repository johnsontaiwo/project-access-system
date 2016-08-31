class Addcertificationtocontractors < ActiveRecord::Migration
  def self.up
    add_column :contractors, :certification, :string
  end

  def self.down
    remove_column :contractors, :certificaton, :string
  end
end

class AddSubnetIdColumn < ActiveRecord::Migration
  def self.up
    add_column :static_ips, :subnet_id, :string
  end

  def self.down
    remove_column :subnet_id
  end
end

class AddSubnetIdColumn < ActiveRecord::Migration
  def self.up
    add_column :static_ips, :subnet_id, :integer
  end

  def self.down
    remove_column :static_ips, :subnet_id
  end
end

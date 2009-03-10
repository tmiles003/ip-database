class AddDescOutsideipColumn < ActiveRecord::Migration
  def self.up
    add_column :static_ips, :description, :text
    add_column :static_ips, :outside_ip, :string
  end

  def self.down
    remove_column :static_ips, :description, :text
    remove_column :static_ips, :outside_ip, :string
  end
end

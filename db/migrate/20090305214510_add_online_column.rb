class AddOnlineColumn < ActiveRecord::Migration
  def self.up
    add_column :static_ips, :online, :boolean
  end

  def self.down
    remove_column :static_ips, :online
  end
end

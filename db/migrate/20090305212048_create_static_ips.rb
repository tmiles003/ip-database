class CreateStaticIps < ActiveRecord::Migration
  def self.up
    create_table :static_ips do |t|
      t.string :address
      t.string :servername
      t.boolean :available

      t.timestamps
    end
  end

  def self.down
    drop_table :static_ips
  end
end

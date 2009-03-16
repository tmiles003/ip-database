class CreateSubnets < ActiveRecord::Migration
  def self.up
    create_table :subnets do |t|
      t.string :network
      t.string :network_name

      t.timestamps
    end
  end

  def self.down
    drop_table :subnets
  end
end

class CreateConfProperties < ActiveRecord::Migration
  def self.up
    create_table :conf_properties do |t|
      t.string :section
      t.string :param
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :conf_properties
  end
end

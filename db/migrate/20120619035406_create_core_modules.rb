class CreateCoreModules < ActiveRecord::Migration
  def self.up
    create_table :core_modules do |t|
      t.string :name
      t.string :description
      t.integer :ord

      t.timestamps
    end
  end

  def self.down
    drop_table :core_modules
  end
end

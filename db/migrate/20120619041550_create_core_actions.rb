class CreateCoreActions < ActiveRecord::Migration
  def self.up
    create_table :core_actions do |t|
      t.integer :module_id
      t.string :name
      t.string :description
      t.integer :ord

      t.timestamps
    end
  end

  def self.down
    drop_table :core_actions
  end
end

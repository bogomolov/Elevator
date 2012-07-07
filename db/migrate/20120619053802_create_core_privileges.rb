class CreateCorePrivileges < ActiveRecord::Migration
  def self.up
    create_table :core_privileges do |t|
      t.integer :role_id
      t.integer :action_id

      t.timestamps
    end
  end

  def self.down
    drop_table :core_privileges
  end
end

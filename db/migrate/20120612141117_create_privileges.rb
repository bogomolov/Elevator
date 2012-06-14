class CreatePrivileges < ActiveRecord::Migration
  def self.up
    create_table "control.privileges" do |t|
      t.integer :role_id
      t.integer :action_id

      t.timestamps
    end
  end

  def self.down
    drop_table "control.privileges"
  end
end

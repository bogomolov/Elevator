class CreateUserPrivileges < ActiveRecord::Migration
  def self.up
    create_table "control.user_privileges" do |t|
      t.integer :role_id
      t.integer :user_id
      t.date :valid_from
      t.date :valid_till

      t.timestamps
    end
  end

  def self.down
    drop_table "control.user_privileges"
  end
end

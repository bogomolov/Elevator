class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table "control.roles" do |t|
      t.string :role
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table "control.roles"
  end
end

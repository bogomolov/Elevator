class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "control.users" do |t|
      t.string :username
      t.string :fullname
      t.boolean :admin
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table "control.users"
  end
end

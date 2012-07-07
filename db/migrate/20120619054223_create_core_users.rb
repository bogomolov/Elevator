class CreateCoreUsers < ActiveRecord::Migration
  def self.up
    create_table :core_users do |t|
      t.string :username
      t.string :fullname
      t.boolean :admin
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :core_users
  end
end

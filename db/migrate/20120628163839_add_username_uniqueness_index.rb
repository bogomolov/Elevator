class AddUsernameUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :core_users, :username, :unique => true
  end

  def down
    remove_index :core_users, :username
  end
end

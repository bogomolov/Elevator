class AddOrdToAppActions < ActiveRecord::Migration
  def self.up
    add_column :app_actions, :ord, :integer
  end

  def self.down
    remove_column :app_actions, :ord
  end
end

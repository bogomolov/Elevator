class AddOrdToAppModules < ActiveRecord::Migration
  def self.up
    add_column :app_modules, :ord, :integer
  end

  def self.down
    remove_column :app_modules, :ord
  end
end

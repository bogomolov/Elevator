class CreateCoreRoles < ActiveRecord::Migration
  def self.up
    create_table :core_roles do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :core_roles
  end
end

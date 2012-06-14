class CreateAppActions < ActiveRecord::Migration
  def self.up
    create_table "control.app_actions" do |t|
      t.string :name
      t.string :description
      t.integer :app_module_id

      t.timestamps
    end
  end

  def self.down
    drop_table "control.app_actions"
  end
end

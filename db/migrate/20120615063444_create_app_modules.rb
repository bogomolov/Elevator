class CreateAppModules < ActiveRecord::Migration
  def self.up
    create_table 'control.app_modules' do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table 'control.app_modules'
  end
end

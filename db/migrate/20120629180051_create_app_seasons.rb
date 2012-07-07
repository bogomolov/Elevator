class CreateAppSeasons < ActiveRecord::Migration
  def change
    create_table :app_seasons do |t|
      t.integer :year
      t.boolean :active

      t.timestamps
    end
    
  end
end

class CreateAppIncomes < ActiveRecord::Migration
  def change
    create_table :app_incomes do |t|
      t.integer :batch_id, :null => false
      t.string :car_time, :default => now()
      t.string :car_num, :null => false
      t.float :weight_brutto
      t.float :moisture

      t.timestamps
    end
  end
  
  
end

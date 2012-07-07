class AppIncomeAddColumnCatTime < ActiveRecord::Migration
  def up
    add_column :app_incomes, :car_time, :datetime
  end

  def down
    drop_column :app_incomes, :car_time
  end
end

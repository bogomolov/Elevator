class AppIncomeAddColumnDeleted < ActiveRecord::Migration
  def up
    add_column :app_batches, :hidden, :boolean
    add_column :app_incomes, :hidden, :boolean
  end

  def down
    drop_column :app_incomes, :hidden
    drop_column :app_batches, :hidden
  end
end

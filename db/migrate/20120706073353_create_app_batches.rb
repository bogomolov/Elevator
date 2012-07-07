class CreateAppBatches < ActiveRecord::Migration
  def change
    create_table :app_batches do |t|
      t.date :batch_date

      t.timestamps
    end
  end
end

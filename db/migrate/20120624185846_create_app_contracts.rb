class CreateAppContracts < ActiveRecord::Migration
  def self.up
    create_table :app_contracts do |t|
      t.string :num
      t.date :stamp
      t.integer :supplier_id
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end

  def self.down
    drop_table :app_contracts
  end
end

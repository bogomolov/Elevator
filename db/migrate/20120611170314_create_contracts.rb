class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.string :num
      t.date :stamp
      t.references :supplier
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end

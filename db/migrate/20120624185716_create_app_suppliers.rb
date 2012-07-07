class CreateAppSuppliers < ActiveRecord::Migration
  def self.up
    create_table :app_suppliers do |t|
      t.string :short_name
      t.string :full_name

      t.timestamps
    end
  end

  def self.down
    drop_table :app_suppliers
  end
end

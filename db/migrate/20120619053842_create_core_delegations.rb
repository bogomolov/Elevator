class CreateCoreDelegations < ActiveRecord::Migration
  def self.up
    create_table :core_delegations do |t|
      t.integer :user_id
      t.integer :role_id
      t.date :valid_from
      t.date :valid_till

      t.timestamps
    end
  end

  def self.down
    drop_table :core_delegations
  end
end

class CreateDecisionDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_decisions do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :decision_making, foreign_key: true, null: false
      t.string :type
      t.integer :serial, null: false
      t.integer :price, null: true
      t.integer :quantity, null: true
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :decision_decisions, [ :entry_id, :serial ], unique: true
    add_index :decision_decisions, [ :entry_id, :decision_making_id ], unique: false
  end
end

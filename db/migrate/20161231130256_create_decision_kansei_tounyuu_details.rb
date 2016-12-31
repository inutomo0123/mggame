class CreateDecisionKanseiTounyuuDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_kansei_tounyuu_details do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :decision_decision, foreign_key: true, null: false
      t.string :operation, limit: 50, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :decision_kansei_tounyuu_details,
      [ :entry_id, :decision_decision_id, :operation ],
      unique: true,
      name: 'index_kansei_tounyuu_on_entry_decision_opration'
  end
end

class CreateDecisionZairyoukounyuuDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_zairyoukounyuu_details do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :decision_decision, foreign_key: true, null: false
      t.references :market, foreign_key: true, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :decision_zairyoukounyuu_details,
      [ :entry_id, :decision_decision_id, :market_id ],
      unique: true,
      name: 'index_zairyoukounyuu_details_on_entry_decision_market_id'
  end
end

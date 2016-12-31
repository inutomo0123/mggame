class CreateDecisionSetsubitoushiDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_setsubitoushi_details do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :decision_decision, foreign_key: true, null: false
      t.references :machine_tool, foreign_key: true, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.integer :amount, null: false

      t.timestamps
    end

    add_index :decision_setsubitoushi_details,
      [ :entry_id, :decision_decision_id, :machine_tool_id ],
      unique: true,
      name: 'index_setsubitoushi_details_on_entry_decision_machine_tool_id'
  end
end

class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :account_title, foreign_key: true, null: false
      t.integer :serial, default: 0, null: true
      t.integer :price, default:0, null: false
      t.integer :quantity, default:0, null: false
      t.integer :amount, default:0, null:false

      t.timestamps
    end
    add_index :journals, [ :entry_id, :serial ], unique: true
  end
end

class CreateJournalJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journal_journals do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :account_title, foreign_key: true, null: false
      t.string :type
      t.integer :serial,   null: false
      t.decimal :price, precision: 8, scale: 2, null: true
      t.integer :quantity, null: true
      t.integer :amount,   null: false
      t.string :remarks,   null: true

      t.timestamps
    end

    add_index :journal_journals, [ :entry_id, :serial ], unique: true
    add_index :journal_journals, [ :entry_id, :account_title_id ], unique: false
  end
end

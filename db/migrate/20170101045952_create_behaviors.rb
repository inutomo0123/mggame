class CreateBehaviors < ActiveRecord::Migration[5.0]
  def change
    create_table :behaviors do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :behavior_type, foreign_key: true, null: false
      t.integer :serial, null: true
      t.references :account_title,  null: true
      t.references :decision_making,  null: true
      t.references :risk,  null: true
      t.references :journal_journal,  null: true
      t.references :decision_decision, null: true
      #t.references :deal_deal,     null: true

      t.timestamps
    end

    add_index :behaviors, [ :entry_id, :serial ], unique: true
  end
end

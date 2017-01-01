class CreateBehaviors < ActiveRecord::Migration[5.0]
  def change
    create_table :behaviors do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :behavior_type, foreign_key: true, null: false
      t.integer :serial, null: true
      t.integer :parent_id, null: true
      t.integer :depth, null:false, default: 1

      t.timestamps
    end

    add_index :behaviors, [ :entry_id, :serial ], unique: true
    add_index :behaviors, [ :entry_id, :parent_id ], unique: false
  end
end

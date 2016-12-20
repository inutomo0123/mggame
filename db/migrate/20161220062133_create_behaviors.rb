class CreateBehaviors < ActiveRecord::Migration[5.0]
  def change
    create_table :behaviors do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :behavior_type, foreign_key: true, null: false
      t.integer :parent_behavior_id, null: true

      t.timestamps
    end

    add_index :behaviors, :parent_behavior_id, unique: false
  end
end

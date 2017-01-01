class CreateBehaviorTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :behavior_types do |t|
      t.string :symbol, limit: 1, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :behavior_types, :symbol, unique: true
    add_index :behavior_types, :name,   unique: true
  end
end

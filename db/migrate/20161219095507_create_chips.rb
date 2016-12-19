class CreateChips < ActiveRecord::Migration[5.0]
  def change
    create_table :chips do |t|
      t.string :symbol, limit: 2, null: false
      t.string :name, limit: 50, null: false
      t.string :color, limit: 10, null: false

      t.timestamps
    end

    add_index :chips, :symbol, unique: true
    add_index :chips, :name,   unique: true
  end
end

class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :client, foreign_key: true, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :players, [ :client_id, :name ], unique: true
  end
end

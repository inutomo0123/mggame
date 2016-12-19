class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :game, foreign_key: true, null: false
      t.references :player, foreign_key: true, null: false

      t.timestamps
    end

    add_index :entries, [ :game_id, :player_id ], unique: true
  end
end

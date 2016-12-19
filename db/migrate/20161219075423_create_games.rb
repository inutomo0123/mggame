class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :round, foreign_key: true, null: false
      t.references :table, foreign_key: true, null: false

      t.timestamps
    end

    add_index :games, [ :round_id, :table_id ], unique: true
  end
end

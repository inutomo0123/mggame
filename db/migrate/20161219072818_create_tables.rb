class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.references :training, foreign_key: true
      t.string :symbol, limit: 1

      t.timestamps
    end

    add_index :tables, [ :training_id, :symbol ], unique: true
  end
end

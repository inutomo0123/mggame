class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :chip,  foreign_key: true, null: false
      t.integer    :number, default: 0,       null: false

      t.timestamps
    end

    add_index :options, [ :entry_id, :chip_id ], unique: true
  end
end

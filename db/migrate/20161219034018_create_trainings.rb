class CreateTrainings < ActiveRecord::Migration[5.0]
  def change
    create_table :trainings do |t|
      t.references :client, foreign_key: true, null: false
      t.date  :do_at, null:false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :trainings, [ :client_id, :do_at, :name ], unique: true
  end
end

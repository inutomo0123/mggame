class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.references :provider, foreign_key: true, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :clients, [ :provider_id, :name ], unique: true  
  end
end

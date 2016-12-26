class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :symbol, limit: 1, null: false
      t.string :name, limit: 50, null: false
      t.integer :volume, null: false
      t.integer :material_price, null: false
      t.integer :max_bid_price, null: false

      t.timestamps
    end

    add_index :markets, :symbol, unique: true
    add_index :markets, :name, unique: true
  end
end

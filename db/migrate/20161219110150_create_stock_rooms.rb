class CreateStockRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_rooms do |t|
      t.string :symbol, limit: 1, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :stock_rooms, :symbol, unique: true
    add_index :stock_rooms, :name,   unique: true
  end
end

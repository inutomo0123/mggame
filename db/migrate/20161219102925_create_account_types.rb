class CreateAccountTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :account_types do |t|
      t.string :symbol, limit: 2, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :account_types, :symbol,  unique: true
    add_index :account_types, :name,    unique: true
  end
end

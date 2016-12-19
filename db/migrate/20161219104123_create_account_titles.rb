class CreateAccountTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :account_titles do |t|
      t.string :symbol, limit: 1, null: false
      t.string :name, limit: 50,  null: false
      t.boolean :is_income, null: false

      t.timestamps
    end

    add_index :account_titles, :symbol, unique: true
    add_index :account_titles, :name,   unique: true
  end
end

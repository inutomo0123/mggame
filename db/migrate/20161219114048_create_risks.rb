class CreateRisks < ActiveRecord::Migration[5.0]
  def change
    create_table :risks do |t|
      t.integer :number, null: false
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    add_index :risks, :number,  unique: true
    add_index :risks, :name,    unique: true
  end
end

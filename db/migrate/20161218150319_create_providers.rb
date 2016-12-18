class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end
    add_index :providers, :name, unique:  true
  end
end

class CreateDecisionMakings < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_makings do |t|
      t.string :symbol, limit: 1, null: false
      t.string :name, limit: 50, null: false
      t.boolean :is_anytime, null: false

      t.timestamps
    end

    add_index :decision_makings, :symbol, unique: true
    add_index :decision_makings, :name,   unique: true
  end
end

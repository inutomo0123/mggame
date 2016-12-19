class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :symbol, limit: 1,   null: false
      t.string :name,   limit: 50,  null: false

      t.timestamps
    end

    add_index :jobs, :symbol, unique: true
    add_index :jobs, :name,   unique: true
  end
end

class CreateMachineTools < ActiveRecord::Migration[5.0]
  def change
    create_table :machine_tools do |t|
      t.string :symbol, limit: 2,   null: false
      t.string :name,   limit: 50,  null: false

      t.timestamps
    end

    add_index :machine_tools, :symbol, unique: true
    add_index :machine_tools, :name,   unique: true
  end
end

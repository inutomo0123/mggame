class CreateDecisionSaiyouDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :decision_saiyou_details do |t|
      t.references :entry, foreign_key: true, null: false
      t.references :decision_decision, foreign_key: true, null: false
      t.references :job, foreign_key: true, null: false
      t.integer :number, null: false

      t.timestamps
    end

    add_index :decision_saiyou_details,
      [ :entry_id, :decision_decision_id, :job_id ],
      unique: true,
      name: 'index_saiyou_details_on_entry_decision_job_id'
  end
end

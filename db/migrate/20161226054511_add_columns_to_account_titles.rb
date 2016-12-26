class AddColumnsToAccountTitles < ActiveRecord::Migration[5.0]
  def change
    add_column :account_titles, :is_cash , :boolean, null: false, default: true
  end
end

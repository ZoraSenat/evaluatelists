class AddDataCardCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :data_cards_count, :integer
  end
end

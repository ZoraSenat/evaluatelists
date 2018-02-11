class AddSelectionCountToDataCards < ActiveRecord::Migration[5.0]
  def change
    add_column :data_cards, :selections_count, :integer
  end
end

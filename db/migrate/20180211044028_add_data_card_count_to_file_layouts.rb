class AddDataCardCountToFileLayouts < ActiveRecord::Migration[5.0]
  def change
    add_column :file_layouts, :data_cards_count, :integer
  end
end

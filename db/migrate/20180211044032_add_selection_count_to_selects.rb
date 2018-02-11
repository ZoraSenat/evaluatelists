class AddSelectionCountToSelects < ActiveRecord::Migration[5.0]
  def change
    add_column :selects, :selections_count, :integer
  end
end

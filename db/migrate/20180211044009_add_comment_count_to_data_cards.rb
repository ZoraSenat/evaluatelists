class AddCommentCountToDataCards < ActiveRecord::Migration[5.0]
  def change
    add_column :data_cards, :comments_count, :integer
  end
end

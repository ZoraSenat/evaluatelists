class CreateDataCards < ActiveRecord::Migration
  def change
    create_table :data_cards do |t|
      t.string :title
      t.integer :file_size
      t.integer :user_id
      t.text :desription
      t.string :subtitle
      t.integer :file_layout_id
      t.string :market
      t.string :file_type
      t.string :image
      t.string :sample_download
      t.string :source

      t.timestamps

    end
  end
end

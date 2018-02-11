class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :data_card_id
      t.integer :user_id
      t.string :title

      t.timestamps

    end
  end
end

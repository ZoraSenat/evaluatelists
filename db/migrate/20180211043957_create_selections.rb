class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :select_id
      t.integer :data_card_id

      t.timestamps

    end
  end
end

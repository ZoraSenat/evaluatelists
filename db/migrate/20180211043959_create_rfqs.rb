class CreateRfqs < ActiveRecord::Migration
  def change
    create_table :rfqs do |t|
      t.integer :user_id
      t.integer :data_card_id

      t.timestamps

    end
  end
end

class CreateChannelAssociations < ActiveRecord::Migration
  def change
    create_table :channel_associations do |t|
      t.integer :data_card_id
      t.integer :channel_id

      t.timestamps

    end
  end
end

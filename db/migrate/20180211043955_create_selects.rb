class CreateSelects < ActiveRecord::Migration
  def change
    create_table :selects do |t|
      t.string :name
      t.string :price

      t.timestamps

    end
  end
end

class CreateFileLayouts < ActiveRecord::Migration
  def change
    create_table :file_layouts do |t|
      t.string :file_name
      t.string :file_path

      t.timestamps

    end
  end
end

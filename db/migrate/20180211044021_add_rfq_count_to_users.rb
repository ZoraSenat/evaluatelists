class AddRfqCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rfqs_count, :integer
  end
end

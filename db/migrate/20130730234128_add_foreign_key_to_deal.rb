class AddForeignKeyToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :trip_id, :integer
  end
end

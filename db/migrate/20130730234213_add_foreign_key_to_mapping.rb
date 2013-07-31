class AddForeignKeyToMapping < ActiveRecord::Migration
  def change
    add_column :mappings, :trip_id, :integer
  end
end

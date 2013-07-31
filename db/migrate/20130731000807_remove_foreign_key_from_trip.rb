class RemoveForeignKeyFromTrip < ActiveRecord::Migration
  def up
    remove_column :trips, :weather_id
    remove_column :trips, :deal_id
    remove_column :trips, :mapping_id
  end

  def down
    add_column :trips, :weather_id, :integer
    add_column :trips, :deal_id, :integer
    add_column :trips, :mapping_id, :integer
  end
end

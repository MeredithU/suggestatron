class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :startzipcode
      t.string :endzipcode
      t.references :weather
      t.references :deal
      t.references :mapping

      t.timestamps
    end
    add_index :trips, :weather_id
    add_index :trips, :deal_id
    add_index :trips, :mapping_id
  end
end

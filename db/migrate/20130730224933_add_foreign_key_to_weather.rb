class AddForeignKeyToWeather < ActiveRecord::Migration
  def change
    add_column :weathers, :trip_id, :integer
  end
end

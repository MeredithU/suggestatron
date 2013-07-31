class AddLongitudeToMappings < ActiveRecord::Migration
  def change
    add_column :mappings, :longitude, :string
  end
end

class AddLatlngToMappings < ActiveRecord::Migration
  def change
    add_column :mappings, :longitude, :float
    add_column :mappings, :latitude, :float
  end
end

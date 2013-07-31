class RemoveColumnsFromMappings < ActiveRecord::Migration
  def change
    remove_column :mappings, :longitude
    remove_column :mappings, :latitude
    remove_column :mappings, :reallongitude
    remove_column :mappings, :reallatitude
  end
end

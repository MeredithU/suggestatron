class AddFloatsToMappings < ActiveRecord::Migration
  def up
    add_column :mappings, :reallongitude, :float
    add_column :mappings, :reallatitude, :float
  end

  def down
    remove_column :mappings, :longitude
    remove_column :mappings, :latitude
  end
end

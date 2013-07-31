class AddLatitudeToMappings < ActiveRecord::Migration
  def change
    add_column :mappings, :latitude, :string
  end
end

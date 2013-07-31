class Mappings < ActiveRecord::Migration
  def up
    add_column :mappings, :gmaps, :boolean
  end

  def down
    remove_column :mappings, :gmaps
  end
end

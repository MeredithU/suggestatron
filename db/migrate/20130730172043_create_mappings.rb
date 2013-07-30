class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :location

      t.timestamps
    end
  end
end

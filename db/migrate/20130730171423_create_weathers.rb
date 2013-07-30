class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :temperature
      t.string :forecast

      t.timestamps
    end
  end
end

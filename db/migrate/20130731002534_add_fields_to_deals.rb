class AddFieldsToDeals < ActiveRecord::Migration
  def up
    add_column :deals, :dealtitle, :string
    add_column :deals, :dealname, :string
    add_column :deals, :dealaddress, :string
    add_column :deals, :dealcity, :string
  end

  def down
    remove_column :deals, :dealtitle
    remove_column :deals, :dealname
    remove_column :deals, :dealaddress
    remove_column :deals, :dealcity
  end
end

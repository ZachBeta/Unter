class AddAvailableToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :available, :boolean
  end
end

class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.decimal :lat
      t.decimal :lng

      t.timestamps null: false
    end
  end
end

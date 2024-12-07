class CreateWeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :weathers do |t|
      t.date :date
      # t.decimal :lat, precision: 2, scale: 4 # -90.0000 to 90.0000
      t.decimal :lat # -90.0000 to 90.0000
      # t.decimal :lon, precision: 3, scale: 4 # -180.0000 to 180.0000
      t.decimal :lon # -180.0000 to 180.0000
      t.string :city
      t.string :state
      t.json :temperatures
      # t.timestamps
    end
  end
end

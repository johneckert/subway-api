class CreateStops < ActiveRecord::Migration[5.1]
  def change
    create_table :stops do |t|
      t.string :stop_id
      t.string :stop_code
      t.string :stop_name
      t.string :stop_desc
      t.decimal :stop_lat, precision: 10, scale: 6
      t.decimal :stop_lon, precision: 10, scale: 6
      t.string :zone_id
      t.string :stop_url
      t.string :location_type
      t.string :parent_station 

      t.timestamps
    end
  end
end

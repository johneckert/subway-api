class CreateStopTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :stop_times do |t|
      t.string :trip_id
      t.time :arrival_time
      t.time :departure_time
      t.string :stop_id 
      t.integer :stop_sequence
      t.string :stop_headsign
      t.integer :pickup_type
      t.integer :drop_off_type
      t.float :shape_dist_travelled

      t.timestamps
    end
  end
end

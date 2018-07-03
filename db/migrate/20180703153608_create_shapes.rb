class CreateShapes < ActiveRecord::Migration[5.1]
  def change
    create_table :shapes do |t|
      t.string :shape_id 
      t.decimal :shape_pt_lat, precision: 10, scale: 6
      t.decimal :shape_pt_lon, precision: 10, scale: 6
      t.integer :shape_pt_sequence
      t.integer :shape_dist_traveled

      t.timestamps
    end
  end
end

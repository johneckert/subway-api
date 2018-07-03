class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.string :from_stop_id
      t.string :to_stop_id 
      t.integer :transfer_type
      t.integer :min_transfer_time

      t.timestamps
    end
  end
end

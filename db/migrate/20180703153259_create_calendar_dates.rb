class CreateCalendarDates < ActiveRecord::Migration[5.1]
  def change
    create_table :calendar_dates do |t|
      t.string :service_id 
      t.date :date
      t.integer :exception_type

      t.timestamps
    end
  end
end

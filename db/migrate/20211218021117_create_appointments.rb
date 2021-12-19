class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.integer :date_day
      t.integer :date_month
      t.integer :date_year
      t.integer :start_hour
      t.integer :start_min
      t.string :start_ampm
      t.integer :end_hour
      t.integer :end_min
      t.string :end_ampm
      t.string :location
      t.string :comments

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end

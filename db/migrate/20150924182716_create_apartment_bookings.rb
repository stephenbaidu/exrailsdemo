class CreateApartmentBookings < ActiveRecord::Migration
  def change
    create_table :apartment_bookings do |t|
      t.references :apartment, index: true, foreign_key: true
      t.references :guest, index: true, foreign_key: true
      t.date :booking_start_date
      t.date :booking_end_date
      t.references :booking_status, index: true, foreign_key: true
      t.string :comments

      t.timestamps null: false
    end
  end
end

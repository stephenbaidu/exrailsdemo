# == Schema Information
#
# Table name: apartment_bookings
#
#  id                 :integer          not null, primary key
#  apartment_id       :integer
#  guest_id           :integer
#  booking_start_date :date
#  booking_end_date   :date
#  booking_status_id  :integer
#  comments           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_apartment_bookings_on_apartment_id       (apartment_id)
#  index_apartment_bookings_on_booking_status_id  (booking_status_id)
#  index_apartment_bookings_on_guest_id           (guest_id)
#

FactoryGirl.define do
  factory :apartment_booking do
    apartment nil
guest nil
booking_start_date "2015-09-24"
booking_end_date "2015-09-24"
booking_status nil
comments "MyString"
  end

end

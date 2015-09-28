class ApartmentBookingSerializer < ActiveModel::Serializer
  attributes :id, :booking_start_date, :booking_end_date, :comments
  attributes :apartment_id, :guest_id, :booking_status_id
  attributes :name

  def name
    "#{object.guest.name} (#{object.apartment.apartment_number})"
  end
end

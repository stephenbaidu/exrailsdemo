namespace :test do
  desc "Initial data setup"
  task :test_data => :environment do
    20.times do
      ApartmentBuilding.create(
        name: Faker::Company.name,
        address: Faker::Address.street_address,
        manager: Faker::Name.name,
        phone: Faker::PhoneNumber.cell_phone
      )
    end

    200.times do
      apartment = Apartment.create(
        name: '--',
        apartment_building_id: ApartmentBuilding.pluck(:id).sample,
        apartment_type_id: ApartmentType.pluck(:id).sample,
        apartment_number: Faker::PhoneNumber.subscriber_number,
        no_of_bathrooms: Faker::Number.between(1, 3),
        no_of_bedrooms: Faker::Number.between(1, 4),
        no_of_rooms: Faker::Number.between(4, 7),
        availability_status_id: AvailabilityStatus.pluck(:id).sample,
        apartment_facility_ids: ApartmentFacility.pluck(:id).sample((1..3).to_a.sample)
      )
      apartment.update_column(:name, "#{apartment.apartment_building.name} #{apartment.apartment_number}")
    end

    100.times do
      Guest.create(
        name: Faker::Name.name,
        gender_id: Gender.pluck(:id).sample,
        date_of_birth: Faker::Date.between(60.years.ago, 18.years.ago),
        first_language: ['English', 'French', 'German'].sample
      )
    end

    Guest.all.each do |guest|
      (1..4).to_a.sample.times do
        booking_start_date = Faker::Date.between(4.months.ago, Date.today)
        ApartmentBooking.create(
          apartment_id: Apartment.pluck(:id).sample,
          guest: guest,
          booking_start_date: booking_start_date,
          booking_end_date: booking_start_date + Faker::Number.between(1, 14),
          booking_status_id: BookingStatus.pluck(:id).sample
        )
      end
    end
  end
end
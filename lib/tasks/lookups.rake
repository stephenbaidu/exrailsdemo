namespace :app do
  desc 'Creates lookups'
  task :lookups => :environment do |t, args|

    # # **********************************
    # # Sample code for populating lookups
    # # **********************************
    # 
    {
      'ApartmentType' => ['Studio', 'Duplex', 'Executive Chamber & Hall'],
      'ApartmentFacility' => ['Broadband', 'Cable TV', 'Computer'],
      'AvailabilityStatus' => ['Available', 'Not Available'],
      'Gender' => ['Male', 'Female', 'Unknown'],
      'BookingStatus' => ['Confirmed', 'Provisional']
    }.each do |k, v|
      klass = k.to_s.constantize
      v.each { |n| klass.create(name: n) } if klass.count == 0
    end
  end
end

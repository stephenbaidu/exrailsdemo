# == Schema Information
#
# Table name: apartments
#
#  id                     :integer          not null, primary key
#  name                   :string
#  apartment_building_id  :integer
#  apartment_type_id      :integer
#  apartment_number       :string
#  no_of_bathrooms        :integer
#  no_of_bedrooms         :integer
#  no_of_rooms            :integer
#  availability_status_id :integer
#  apartment_facility_ids :string           default([])
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_apartments_on_apartment_building_id   (apartment_building_id)
#  index_apartments_on_apartment_type_id       (apartment_type_id)
#  index_apartments_on_availability_status_id  (availability_status_id)
#

FactoryGirl.define do
  factory :apartment do
    name "MyString"
apartment_building nil
apartment_type nil
apartment_number "MyString"
no_of_bathrooms 1
no_of_bedrooms 1
no_of_rooms 1
availability_status nil
apartment_facility_ids "MyString"
  end

end

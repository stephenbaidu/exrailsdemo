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

require 'rails_helper'

RSpec.describe Apartment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: apartment_facilities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ApartmentFacility < ActiveRecord::Base
end

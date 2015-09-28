# == Schema Information
#
# Table name: apartment_buildings
#
#  id          :integer          not null, primary key
#  name        :string
#  short_name  :string
#  description :string
#  address     :string
#  manager     :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ApartmentBuilding < ActiveRecord::Base
  resourcify
end

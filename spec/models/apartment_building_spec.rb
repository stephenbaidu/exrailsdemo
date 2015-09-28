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

require 'rails_helper'

RSpec.describe ApartmentBuilding, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: apartment_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ApartmentType < ActiveRecord::Base
end

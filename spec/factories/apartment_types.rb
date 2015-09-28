# == Schema Information
#
# Table name: apartment_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :apartment_type do
    name "MyString"
  end

end

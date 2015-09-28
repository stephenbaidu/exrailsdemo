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

FactoryGirl.define do
  factory :apartment_building do
    name "MyString"
short_name "MyString"
description "MyString"
address "MyString"
manager "MyString"
phone "MyString"
  end

end

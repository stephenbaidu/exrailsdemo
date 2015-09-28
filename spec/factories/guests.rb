# == Schema Information
#
# Table name: guests
#
#  id             :integer          not null, primary key
#  name           :string
#  gender_id      :integer
#  date_of_birth  :date
#  first_language :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_guests_on_gender_id  (gender_id)
#

FactoryGirl.define do
  factory :guest do
    name "MyString"
gender nil
date_of_birth "2015-09-24"
first_language "MyString"
  end

end

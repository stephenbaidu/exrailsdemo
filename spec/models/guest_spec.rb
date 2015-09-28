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

require 'rails_helper'

RSpec.describe Guest, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

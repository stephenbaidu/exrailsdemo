# == Schema Information
#
# Table name: booking_statuses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BookingStatus < ActiveRecord::Base
end

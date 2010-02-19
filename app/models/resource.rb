class Resource < ActiveRecord::Base
  has_many :bookings
  belongs_to :location
  
  def availabile?( date )
    # check for bookings on this date
    # compare bookings with availability
    return true
  end
end

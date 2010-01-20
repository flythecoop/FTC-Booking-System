class Desk < ActiveRecord::Base
  belongs_to :location
  has_many :bookings, :as => :bookable
  
  def dates
    dates = []
    self.bookings.each do |b|
      dates << b.start_at
    end
    return dates
  end
end

class Location < ActiveRecord::Base
  has_many :desks
  has_many :meeting_rooms
end

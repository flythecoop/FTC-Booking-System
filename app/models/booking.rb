class Booking < ActiveRecord::Base
  belongs_to :bookable, :polymorphic => true
  belongs_to :user
end

class Reservation < ActiveRecord::Base
  belongs_to :MovieShowtime
  belongs_to :SeatRoom
  belongs_to :User
  belongs_to :Food
end

class MovieShowtime < ActiveRecord::Base
  belongs_to :Movie
  belongs_to :MovieRoom
end

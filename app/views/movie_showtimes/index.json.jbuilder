json.array!(@movie_showtimes) do |movie_showtime|
  json.extract! movie_showtime, :id, :Movie_id, :MovieRoom_id, :start_time
  json.url movie_showtime_url(movie_showtime, format: :json)
end

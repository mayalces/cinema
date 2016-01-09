json.array!(@movie_rooms) do |movie_room|
  json.extract! movie_room, :id, :seats
  json.url movie_room_url(movie_room, format: :json)
end

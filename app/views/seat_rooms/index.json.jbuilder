json.array!(@seat_rooms) do |seat_room|
  json.extract! seat_room, :id, :seat, :line, :state, :MovieRoom_id
  json.url seat_room_url(seat_room, format: :json)
end

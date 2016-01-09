json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :MovieShowtime_id, :SeatRoom_id, :User_id, :Food_id, :start_time
  json.url reservation_url(reservation, format: :json)
end

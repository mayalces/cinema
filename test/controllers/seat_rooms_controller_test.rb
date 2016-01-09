require 'test_helper'

class SeatRoomsControllerTest < ActionController::TestCase
  setup do
    @seat_room = seat_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seat_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seat_room" do
    assert_difference('SeatRoom.count') do
      post :create, seat_room: { MovieRoom_id: @seat_room.MovieRoom_id, line: @seat_room.line, seat: @seat_room.seat, state: @seat_room.state }
    end

    assert_redirected_to seat_room_path(assigns(:seat_room))
  end

  test "should show seat_room" do
    get :show, id: @seat_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seat_room
    assert_response :success
  end

  test "should update seat_room" do
    patch :update, id: @seat_room, seat_room: { MovieRoom_id: @seat_room.MovieRoom_id, line: @seat_room.line, seat: @seat_room.seat, state: @seat_room.state }
    assert_redirected_to seat_room_path(assigns(:seat_room))
  end

  test "should destroy seat_room" do
    assert_difference('SeatRoom.count', -1) do
      delete :destroy, id: @seat_room
    end

    assert_redirected_to seat_rooms_path
  end
end

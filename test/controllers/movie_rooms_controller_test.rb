require 'test_helper'

class MovieRoomsControllerTest < ActionController::TestCase
  setup do
    @movie_room = movie_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_room" do
    assert_difference('MovieRoom.count') do
      post :create, movie_room: { seats: @movie_room.seats }
    end

    assert_redirected_to movie_room_path(assigns(:movie_room))
  end

  test "should show movie_room" do
    get :show, id: @movie_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_room
    assert_response :success
  end

  test "should update movie_room" do
    patch :update, id: @movie_room, movie_room: { seats: @movie_room.seats }
    assert_redirected_to movie_room_path(assigns(:movie_room))
  end

  test "should destroy movie_room" do
    assert_difference('MovieRoom.count', -1) do
      delete :destroy, id: @movie_room
    end

    assert_redirected_to movie_rooms_path
  end
end

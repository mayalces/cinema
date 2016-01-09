require 'test_helper'

class MovieShowtimesControllerTest < ActionController::TestCase
  setup do
    @movie_showtime = movie_showtimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_showtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_showtime" do
    assert_difference('MovieShowtime.count') do
      post :create, movie_showtime: { MovieRoom_id: @movie_showtime.MovieRoom_id, Movie_id: @movie_showtime.Movie_id, start_time: @movie_showtime.start_time }
    end

    assert_redirected_to movie_showtime_path(assigns(:movie_showtime))
  end

  test "should show movie_showtime" do
    get :show, id: @movie_showtime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_showtime
    assert_response :success
  end

  test "should update movie_showtime" do
    patch :update, id: @movie_showtime, movie_showtime: { MovieRoom_id: @movie_showtime.MovieRoom_id, Movie_id: @movie_showtime.Movie_id, start_time: @movie_showtime.start_time }
    assert_redirected_to movie_showtime_path(assigns(:movie_showtime))
  end

  test "should destroy movie_showtime" do
    assert_difference('MovieShowtime.count', -1) do
      delete :destroy, id: @movie_showtime
    end

    assert_redirected_to movie_showtimes_path
  end
end

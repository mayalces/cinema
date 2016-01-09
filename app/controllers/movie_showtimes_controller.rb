class MovieShowtimesController < ApplicationController
  before_action :set_movie_showtime, only: [:show, :edit, :update, :destroy]

  # GET /movie_showtimes
  # GET /movie_showtimes.json
  def index
    @movie_showtimes = MovieShowtime.all
  end

  # GET /movie_showtimes/1
  # GET /movie_showtimes/1.json
  def show
  end

  # GET /movie_showtimes/new
  def new
    @movie_showtime = MovieShowtime.new
  end

  # GET /movie_showtimes/1/edit
  def edit
  end

  # POST /movie_showtimes
  # POST /movie_showtimes.json
  def create
    @movie_showtime = MovieShowtime.new(movie_showtime_params)

    respond_to do |format|
      if @movie_showtime.save
        format.html { redirect_to @movie_showtime, notice: 'Movie showtime was successfully created.' }
        format.json { render :show, status: :created, location: @movie_showtime }
      else
        format.html { render :new }
        format.json { render json: @movie_showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_showtimes/1
  # PATCH/PUT /movie_showtimes/1.json
  def update
    respond_to do |format|
      if @movie_showtime.update(movie_showtime_params)
        format.html { redirect_to @movie_showtime, notice: 'Movie showtime was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_showtime }
      else
        format.html { render :edit }
        format.json { render json: @movie_showtime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_showtimes/1
  # DELETE /movie_showtimes/1.json
  def destroy
    @movie_showtime.destroy
    respond_to do |format|
      format.html { redirect_to movie_showtimes_url, notice: 'Movie showtime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_showtime
      @movie_showtime = MovieShowtime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_showtime_params
      params.require(:movie_showtime).permit(:movie_id, :movie_room_id, :start_time)
    end
end

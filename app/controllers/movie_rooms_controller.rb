class MovieRoomsController < ApplicationController
  before_action :set_movie_room, only: [:show, :edit, :update, :destroy]

  # GET /movie_rooms
  # GET /movie_rooms.json
  def index
    @movie_rooms = MovieRoom.all
  end

  # GET /movie_rooms/1
  # GET /movie_rooms/1.json
  def show
  end

  # GET /movie_rooms/new
  def new
    @movie_room = MovieRoom.new
  end

  # GET /movie_rooms/1/edit
  def edit
  end

  # POST /movie_rooms
  # POST /movie_rooms.json
  def create
    @movie_room = MovieRoom.new(movie_room_params)

    respond_to do |format|
      if @movie_room.save
        format.html { redirect_to @movie_room, notice: 'Movie room was successfully created.' }
        format.json { render :show, status: :created, location: @movie_room }
      else
        format.html { render :new }
        format.json { render json: @movie_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_rooms/1
  # PATCH/PUT /movie_rooms/1.json
  def update
    respond_to do |format|
      if @movie_room.update(movie_room_params)
        format.html { redirect_to @movie_room, notice: 'Movie room was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_room }
      else
        format.html { render :edit }
        format.json { render json: @movie_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_rooms/1
  # DELETE /movie_rooms/1.json
  def destroy
    @movie_room.destroy
    respond_to do |format|
      format.html { redirect_to movie_rooms_url, notice: 'Movie room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_room
      @movie_room = MovieRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_room_params
      params.require(:movie_room).permit(:seats)
    end
end

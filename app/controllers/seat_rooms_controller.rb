class SeatRoomsController < ApplicationController
  before_action :set_seat_room, only: [:show, :edit, :update, :destroy]

  # GET /seat_rooms
  # GET /seat_rooms.json
  def index
    @seat_rooms = SeatRoom.all
  end

  # GET /seat_rooms/1
  # GET /seat_rooms/1.json
  def show
  end

  # GET /seat_rooms/new
  def new
    @seat_room = SeatRoom.new
  end

  # GET /seat_rooms/1/edit
  def edit
  end

  # POST /seat_rooms
  # POST /seat_rooms.json
  def create
    @seat_room = SeatRoom.new(seat_room_params)

    respond_to do |format|
      if @seat_room.save
        format.html { redirect_to @seat_room, notice: 'Seat room was successfully created.' }
        format.json { render :show, status: :created, location: @seat_room }
      else
        format.html { render :new }
        format.json { render json: @seat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_rooms/1
  # PATCH/PUT /seat_rooms/1.json
  def update
    respond_to do |format|
      if @seat_room.update(seat_room_params)
        format.html { redirect_to @seat_room, notice: 'Seat room was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_room }
      else
        format.html { render :edit }
        format.json { render json: @seat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_rooms/1
  # DELETE /seat_rooms/1.json
  def destroy
    @seat_room.destroy
    respond_to do |format|
      format.html { redirect_to seat_rooms_url, notice: 'Seat room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_room
      @seat_room = SeatRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_room_params
      params.require(:seat_room).permit(:seat, :line, :state, :movie_room_id)
    end
end

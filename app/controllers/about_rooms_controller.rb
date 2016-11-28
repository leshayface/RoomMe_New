class AboutRoomsController < ApplicationController
  before_action :set_about_room, only: [:show, :edit, :update, :destroy]

  # GET /about_rooms
  # GET /about_rooms.json
  def index
    @about_rooms = AboutRoom.all
  end

  # GET /about_rooms/1
  # GET /about_rooms/1.json
  def show
  end

  # GET /about_rooms/new
  def new
    @about_room = AboutRoom.new
  end

  # GET /about_rooms/1/edit
  def edit
  end

  # POST /about_rooms
  # POST /about_rooms.json
  def create
    @about_room = AboutRoom.new(about_room_params)

    respond_to do |format|
      if @about_room.save
        format.html { redirect_to @about_room, notice: 'About room was successfully created.' }
        format.json { render :show, status: :created, location: @about_room }
      else
        format.html { render :new }
        format.json { render json: @about_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_rooms/1
  # PATCH/PUT /about_rooms/1.json
  def update
    respond_to do |format|
      if @about_room.update(about_room_params)
        format.html { redirect_to @about_room, notice: 'About room was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_room }
      else
        format.html { render :edit }
        format.json { render json: @about_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_rooms/1
  # DELETE /about_rooms/1.json
  def destroy
    @about_room.destroy
    respond_to do |format|
      format.html { redirect_to about_rooms_url, notice: 'About room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_room
      @about_room = AboutRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_room_params
      params.fetch(:about_room, {})
    end
end

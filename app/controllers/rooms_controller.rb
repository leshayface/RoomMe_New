class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
    @room.build_location
    @room.build_about_property
    @room.build_about_room
    @room.build_housemate
    @room.house_rules.build
    @room.room_amenities.build
    @room.build_user
    3.times {@room.room_images.build}
  end

  # GET /rooms/1/edit
  def edit
    # 3.times { @trip.trip_images.build }
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:title, :description, location_attributes: [ :id, :suburb, :city, :province, :country ], house_rule_ids: [], room_amenity_ids: [], about_property_attributes: [:id, :property_type, :numb_rooms, :numb_bathrooms, :rooms_avail ], about_room_attributes: [:id, :monthly_rent, :add_utility_cost, :room_type, :furnished, :ensuite, :avail_from, :min_stay ], housemate_attributes: [:id, :numb_current_mates, :pref_gender, :pref_occupation, :pref_age_min, :pref_age_max], room_images_attributes: [:id, :caption, :photo], users_attributes: [:name, :email, :phone, :poster_type, :password, :password_confirmation] )
    end
end

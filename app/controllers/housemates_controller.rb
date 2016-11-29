class HousematesController < ApplicationController
  before_action :set_housemate, only: [:show, :edit, :update, :destroy]

  # GET /housemates
  # GET /housemates.json
  def index
    @housemates = Housemate.all
  end

  # GET /housemates/1
  # GET /housemates/1.json
  def show
  end

  # GET /housemates/new
  def new
    @housemate = Housemate.new
  end

  # GET /housemates/1/edit
  def edit
  end

  # POST /housemates
  # POST /housemates.json
  def create
    @housemate = Housemate.new(housemate_params)

    respond_to do |format|
      if @housemate.save
        format.html { redirect_to @housemate, notice: 'Housemate was successfully created.' }
        format.json { render :show, status: :created, location: @housemate }
      else
        format.html { render :new }
        format.json { render json: @housemate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housemates/1
  # PATCH/PUT /housemates/1.json
  def update
    respond_to do |format|
      if @housemate.update(housemate_params)
        format.html { redirect_to @housemate, notice: 'Housemate was successfully updated.' }
        format.json { render :show, status: :ok, location: @housemate }
      else
        format.html { render :edit }
        format.json { render json: @housemate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housemates/1
  # DELETE /housemates/1.json
  def destroy
    @housemate.destroy
    respond_to do |format|
      format.html { redirect_to housemates_url, notice: 'Housemate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housemate
      @housemate = Housemate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housemate_params
      params.fetch(:housemate, {})
    end
end

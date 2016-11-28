class AboutPropertiesController < ApplicationController
  before_action :set_about_property, only: [:show, :edit, :update, :destroy]

  # GET /about_properties
  # GET /about_properties.json
  def index
    @about_properties = AboutProperty.all
  end

  # GET /about_properties/1
  # GET /about_properties/1.json
  def show
  end

  # GET /about_properties/new
  def new
    @about_property = AboutProperty.new
  end

  # GET /about_properties/1/edit
  def edit
  end

  # POST /about_properties
  # POST /about_properties.json
  def create
    @about_property = AboutProperty.new(about_property_params)

    respond_to do |format|
      if @about_property.save
        format.html { redirect_to @about_property, notice: 'About property was successfully created.' }
        format.json { render :show, status: :created, location: @about_property }
      else
        format.html { render :new }
        format.json { render json: @about_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_properties/1
  # PATCH/PUT /about_properties/1.json
  def update
    respond_to do |format|
      if @about_property.update(about_property_params)
        format.html { redirect_to @about_property, notice: 'About property was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_property }
      else
        format.html { render :edit }
        format.json { render json: @about_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_properties/1
  # DELETE /about_properties/1.json
  def destroy
    @about_property.destroy
    respond_to do |format|
      format.html { redirect_to about_properties_url, notice: 'About property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_property
      @about_property = AboutProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_property_params
      params.fetch(:about_property, {})
    end
end

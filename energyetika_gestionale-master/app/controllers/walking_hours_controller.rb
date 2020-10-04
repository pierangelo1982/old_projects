class WalkingHoursController < ApplicationController
  before_action :set_walking_hour, only: [:show, :edit, :update, :destroy]

  # GET /walking_hours
  # GET /walking_hours.json
  def index
    @walking_hours = WalkingHour.all
  end

  # GET /walking_hours/1
  # GET /walking_hours/1.json
  def show
  end

  # GET /walking_hours/new
  def new
    @walking_hour = WalkingHour.new
  end

  # GET /walking_hours/1/edit
  def edit
  end

  # POST /walking_hours
  # POST /walking_hours.json
  def create
    @walking_hour = WalkingHour.new(walking_hour_params)

    respond_to do |format|
      if @walking_hour.save
        format.html { redirect_to @walking_hour, notice: 'Walking hour was successfully created.' }
        format.json { render :show, status: :created, location: @walking_hour }
      else
        format.html { render :new }
        format.json { render json: @walking_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walking_hours/1
  # PATCH/PUT /walking_hours/1.json
  def update
    respond_to do |format|
      if @walking_hour.update(walking_hour_params)
        format.html { redirect_to @walking_hour, notice: 'Walking hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @walking_hour }
      else
        format.html { render :edit }
        format.json { render json: @walking_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walking_hours/1
  # DELETE /walking_hours/1.json
  def destroy
    @walking_hour.destroy
    respond_to do |format|
      format.html { redirect_to walking_hours_url, notice: 'Walking hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walking_hour
      @walking_hour = WalkingHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walking_hour_params
      params.require(:walking_hour).permit(:raw_material_id, :veicolo, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento)
    end
end

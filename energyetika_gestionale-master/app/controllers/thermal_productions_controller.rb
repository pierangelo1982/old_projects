class ThermalProductionsController < ApplicationController
  before_action :set_thermal_production, only: [:show, :edit, :update, :destroy]

  # GET /thermal_productions
  # GET /thermal_productions.json
  def index
    @thermal_productions = ThermalProduction.all
  end

  # GET /thermal_productions/1
  # GET /thermal_productions/1.json
  def show
  end

  # GET /thermal_productions/new
  def new
    @thermal_production = ThermalProduction.new
    @thermal_production.thermal_production_items.build
  end

  # GET /thermal_productions/1/edit
  def edit
  end

  # POST /thermal_productions
  # POST /thermal_productions.json
  def create
    @thermal_production = ThermalProduction.new(thermal_production_params)

    respond_to do |format|
      if @thermal_production.save
        format.html { redirect_to @thermal_production, notice: 'Thermal production was successfully created.' }
        format.json { render :show, status: :created, location: @thermal_production }
      else
        format.html { render :new }
        format.json { render json: @thermal_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermal_productions/1
  # PATCH/PUT /thermal_productions/1.json
  def update
    respond_to do |format|
      if @thermal_production.update(thermal_production_params)
        format.html { redirect_to @thermal_production, notice: 'Thermal production was successfully updated.' }
        format.json { render :show, status: :ok, location: @thermal_production }
      else
        format.html { render :edit }
        format.json { render json: @thermal_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermal_productions/1
  # DELETE /thermal_productions/1.json
  def destroy
    @thermal_production.destroy
    respond_to do |format|
      format.html { redirect_to thermal_productions_url, notice: 'Thermal production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermal_production
      @thermal_production = ThermalProduction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermal_production_params
      params.require(:thermal_production).permit(:company_id, :note,
      thermal_production_items_attributes: [:id, :thermal_production_id, :caldo_freddo, :utenza, :nome_generatore, :matricola, :potenza, :dest_acs, :_destroy])
    end
end

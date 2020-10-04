class ThermalEnergyProductionsController < ApplicationController
  before_action :set_thermal_energy_production, only: [:show, :edit, :update, :destroy]

  # GET /thermal_energy_productions
  # GET /thermal_energy_productions.json
  def index
    @thermal_energy_productions = ThermalEnergyProduction.all
  end

  # GET /thermal_energy_productions/1
  # GET /thermal_energy_productions/1.json
  def show
  end

  # GET /thermal_energy_productions/new
  def new
    @thermal_energy_production = ThermalEnergyProduction.new
    @thermal_energy_production.thermal_energy_production_items.build
  end

  # GET /thermal_energy_productions/1/edit
  def edit
  end

  # POST /thermal_energy_productions
  # POST /thermal_energy_productions.json
  def create
    @thermal_energy_production = ThermalEnergyProduction.new(thermal_energy_production_params)

    respond_to do |format|
      if @thermal_energy_production.save
        format.html { redirect_to @thermal_energy_production, notice: 'Thermal energy production was successfully created.' }
        format.json { render :show, status: :created, location: @thermal_energy_production }
      else
        format.html { render :new }
        format.json { render json: @thermal_energy_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermal_energy_productions/1
  # PATCH/PUT /thermal_energy_productions/1.json
  def update
    respond_to do |format|
      if @thermal_energy_production.update(thermal_energy_production_params)
        format.html { redirect_to @thermal_energy_production, notice: 'Thermal energy production was successfully updated.' }
        format.json { render :show, status: :ok, location: @thermal_energy_production }
      else
        format.html { render :edit }
        format.json { render json: @thermal_energy_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermal_energy_productions/1
  # DELETE /thermal_energy_productions/1.json
  def destroy
    @thermal_energy_production.destroy
    respond_to do |format|
      format.html { redirect_to thermal_energy_productions_url, notice: 'Thermal energy production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermal_energy_production
      @thermal_energy_production = ThermalEnergyProduction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermal_energy_production_params
      params.require(:thermal_energy_production).permit(:company_id, :note,
      thermal_energy_production_items_attributes: [:id, :thermal_energy_production_id, :caldo_freddo, :utenza, :nome_generatore, :matricola, :potenza, :dest_acs, :_destroy])
    end
end

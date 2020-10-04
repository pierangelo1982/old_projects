class ThermalProductionItemsController < ApplicationController
  before_action :set_thermal_production_item, only: [:show, :edit, :update, :destroy]

  # GET /thermal_production_items
  # GET /thermal_production_items.json
  def index
    @thermal_production_items = ThermalProductionItem.all
  end

  # GET /thermal_production_items/1
  # GET /thermal_production_items/1.json
  def show
  end

  # GET /thermal_production_items/new
  def new
    @thermal_production_item = ThermalProductionItem.new
  end

  # GET /thermal_production_items/1/edit
  def edit
  end

  # POST /thermal_production_items
  # POST /thermal_production_items.json
  def create
    @thermal_production_item = ThermalProductionItem.new(thermal_production_item_params)

    respond_to do |format|
      if @thermal_production_item.save
        format.html { redirect_to @thermal_production_item, notice: 'Thermal production item was successfully created.' }
        format.json { render :show, status: :created, location: @thermal_production_item }
      else
        format.html { render :new }
        format.json { render json: @thermal_production_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermal_production_items/1
  # PATCH/PUT /thermal_production_items/1.json
  def update
    respond_to do |format|
      if @thermal_production_item.update(thermal_production_item_params)
        format.html { redirect_to @thermal_production_item, notice: 'Thermal production item was successfully updated.' }
        format.json { render :show, status: :ok, location: @thermal_production_item }
      else
        format.html { render :edit }
        format.json { render json: @thermal_production_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermal_production_items/1
  # DELETE /thermal_production_items/1.json
  def destroy
    @thermal_production_item.destroy
    respond_to do |format|
      format.html { redirect_to thermal_production_items_url, notice: 'Thermal production item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermal_production_item
      @thermal_production_item = ThermalProductionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermal_production_item_params
      params.require(:thermal_production_item).permit(:thermal_production_id, :caldo_freddo, :utenza, :nome_generatore, :matricola, :potenza, :dest_acs)
    end
end

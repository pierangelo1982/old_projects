class ProducedEnergiesController < ApplicationController
  before_action :set_produced_energy, only: [:show, :edit, :update, :destroy]

  # GET /produced_energies
  # GET /produced_energies.json
  def index
    @produced_energies = ProducedEnergy.all
  end

  # GET /produced_energies/1
  # GET /produced_energies/1.json
  def show
  end

  # GET /produced_energies/new
  def new
    @produced_energy = ProducedEnergy.new
  end

  # GET /produced_energies/1/edit
  def edit
  end

  # POST /produced_energies
  # POST /produced_energies.json
  def create
    @produced_energy = ProducedEnergy.new(produced_energy_params)

    respond_to do |format|
      if @produced_energy.save
        format.html { redirect_to @produced_energy, notice: 'Produced energy was successfully created.' }
        format.json { render :show, status: :created, location: @produced_energy }
      else
        format.html { render :new }
        format.json { render json: @produced_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produced_energies/1
  # PATCH/PUT /produced_energies/1.json
  def update
    respond_to do |format|
      if @produced_energy.update(produced_energy_params)
        format.html { redirect_to @produced_energy, notice: 'Produced energy was successfully updated.' }
        format.json { render :show, status: :ok, location: @produced_energy }
      else
        format.html { render :edit }
        format.json { render json: @produced_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produced_energies/1
  # DELETE /produced_energies/1.json
  def destroy
    @produced_energy.destroy
    respond_to do |format|
      format.html { redirect_to produced_energies_url, notice: 'Produced energy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produced_energy
      @produced_energy = ProducedEnergy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produced_energy_params
      params.require(:produced_energy).permit(:energy_id, :produzione, :unita_misura, :fonte, :quantita, :costo, :anno_riferimento)
    end
end

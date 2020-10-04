class AcquiredEnergiesController < ApplicationController
  before_action :set_acquired_energy, only: [:show, :edit, :update, :destroy]

  # GET /acquired_energies
  # GET /acquired_energies.json
  def index
    @acquired_energies = AcquiredEnergy.all
  end

  # GET /acquired_energies/1
  # GET /acquired_energies/1.json
  def show
  end

  # GET /acquired_energies/new
  def new
    @acquired_energy = AcquiredEnergy.new
  end

  # GET /acquired_energies/1/edit
  def edit
  end

  # POST /acquired_energies
  # POST /acquired_energies.json
  def create
    @acquired_energy = AcquiredEnergy.new(acquired_energy_params)

    respond_to do |format|
      if @acquired_energy.save
        format.html { redirect_to @acquired_energy, notice: 'Acquired energy was successfully created.' }
        format.json { render :show, status: :created, location: @acquired_energy }
      else
        format.html { render :new }
        format.json { render json: @acquired_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acquired_energies/1
  # PATCH/PUT /acquired_energies/1.json
  def update
    respond_to do |format|
      if @acquired_energy.update(acquired_energy_params)
        format.html { redirect_to @acquired_energy, notice: 'Acquired energy was successfully updated.' }
        format.json { render :show, status: :ok, location: @acquired_energy }
      else
        format.html { render :edit }
        format.json { render json: @acquired_energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acquired_energies/1
  # DELETE /acquired_energies/1.json
  def destroy
    @acquired_energy.destroy
    respond_to do |format|
      format.html { redirect_to acquired_energies_url, notice: 'Acquired energy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acquired_energy
      @acquired_energy = AcquiredEnergy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acquired_energy_params
      params.require(:acquired_energy).permit(:energy_id, :acquisti, :unita_misura, :note, :quantita, :costo, :anno_riferimento)
    end
end

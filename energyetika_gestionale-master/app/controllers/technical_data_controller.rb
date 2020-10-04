class TechnicalDataController < ApplicationController
  before_action :set_technical_datum, only: [:show, :edit, :update, :destroy]

  # GET /technical_data
  # GET /technical_data.json
  def index
    @technical_data = TechnicalDatum.all
  end

  # GET /technical_data/1
  # GET /technical_data/1.json
  def show
  end

  # GET /technical_data/new
  def new
    @technical_datum = TechnicalDatum.new
  end

  # GET /technical_data/1/edit
  def edit
  end

  # POST /technical_data
  # POST /technical_data.json
  def create
    @technical_datum = TechnicalDatum.new(technical_datum_params)

    respond_to do |format|
      if @technical_datum.save
        format.html { redirect_to @technical_datum, notice: 'Technical datum was successfully created.' }
        format.json { render :show, status: :created, location: @technical_datum }
      else
        format.html { render :new }
        format.json { render json: @technical_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technical_data/1
  # PATCH/PUT /technical_data/1.json
  def update
    respond_to do |format|
      if @technical_datum.update(technical_datum_params)
        format.html { redirect_to @technical_datum, notice: 'Technical datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @technical_datum }
      else
        format.html { render :edit }
        format.json { render json: @technical_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technical_data/1
  # DELETE /technical_data/1.json
  def destroy
    @technical_datum.destroy
    respond_to do |format|
      format.html { redirect_to technical_data_url, notice: 'Technical datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical_datum
      @technical_datum = TechnicalDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technical_datum_params
      params.require(:technical_datum).permit(:company_id, :superficie_totale, :superficie_produzione, :superficie_uffici, :superficie_magazzini, :volume_totale, :volume_produzione, :volume_uffici, :volume_magazzini, :dimensione_uffici, :servizi_igenici, :dimensione_piazzale, :presenza_docce, :numero_impiegati, :numero_operai, :descrizione)
    end
end

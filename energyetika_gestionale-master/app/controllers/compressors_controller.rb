class CompressorsController < ApplicationController
  before_action :set_compressor, only: [:show, :edit, :update, :destroy]

  # GET /compressors
  # GET /compressors.json
  def index
    @compressors = Compressor.all
  end

  # GET /compressors/1
  # GET /compressors/1.json
  def show
  end

  # GET /compressors/new
  def new
    @compressor = Compressor.new
    @compressor.compressor_items.build
  end

  # GET /compressors/1/edit
  def edit
  end

  # POST /compressors
  # POST /compressors.json
  def create
    @compressor = Compressor.new(compressor_params)

    respond_to do |format|
      if @compressor.save
        format.html { redirect_to @compressor, notice: 'Compressor was successfully created.' }
        format.json { render :show, status: :created, location: @compressor }
      else
        format.html { render :new }
        format.json { render json: @compressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compressors/1
  # PATCH/PUT /compressors/1.json
  def update
    respond_to do |format|
      if @compressor.update(compressor_params)
        format.html { redirect_to @compressor, notice: 'Compressor was successfully updated.' }
        format.json { render :show, status: :ok, location: @compressor }
      else
        format.html { render :edit }
        format.json { render json: @compressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressors/1
  # DELETE /compressors/1.json
  def destroy
    @compressor.destroy
    respond_to do |format|
      format.html { redirect_to compressors_url, notice: 'Compressor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compressor
      @compressor = Compressor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compressor_params
      params.require(:compressor).permit(:company_id, :note,
      compressor_items_attributes: [:id, :compressor_id, :marca, :modello, :potenza, :anno, :note, :_destroy])
    end
end

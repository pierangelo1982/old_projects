class CompressorItemsController < ApplicationController
  before_action :set_compressor_item, only: [:show, :edit, :update, :destroy]

  # GET /compressor_items
  # GET /compressor_items.json
  def index
    @compressor_items = CompressorItem.all
  end

  # GET /compressor_items/1
  # GET /compressor_items/1.json
  def show
  end

  # GET /compressor_items/new
  def new
    @compressor_item = CompressorItem.new
  end

  # GET /compressor_items/1/edit
  def edit
  end

  # POST /compressor_items
  # POST /compressor_items.json
  def create
    @compressor_item = CompressorItem.new(compressor_item_params)

    respond_to do |format|
      if @compressor_item.save
        format.html { redirect_to @compressor_item, notice: 'Compressor item was successfully created.' }
        format.json { render :show, status: :created, location: @compressor_item }
      else
        format.html { render :new }
        format.json { render json: @compressor_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compressor_items/1
  # PATCH/PUT /compressor_items/1.json
  def update
    respond_to do |format|
      if @compressor_item.update(compressor_item_params)
        format.html { redirect_to @compressor_item, notice: 'Compressor item was successfully updated.' }
        format.json { render :show, status: :ok, location: @compressor_item }
      else
        format.html { render :edit }
        format.json { render json: @compressor_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressor_items/1
  # DELETE /compressor_items/1.json
  def destroy
    @compressor_item.destroy
    respond_to do |format|
      format.html { redirect_to compressor_items_url, notice: 'Compressor item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compressor_item
      @compressor_item = CompressorItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compressor_item_params
      params.require(:compressor_item).permit(:compressor_id, :marca, :modello, :potenza, :anno, :note)
    end
end

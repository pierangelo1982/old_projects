class RawMaterialItemsController < ApplicationController
  before_action :set_raw_material_item, only: [:show, :edit, :update, :destroy]

  # GET /raw_material_items
  # GET /raw_material_items.json
  def index
    @raw_material_items = RawMaterialItem.all
  end

  # GET /raw_material_items/1
  # GET /raw_material_items/1.json
  def show
  end

  # GET /raw_material_items/new
  def new
    @raw_material_item = RawMaterialItem.new
  end

  # GET /raw_material_items/1/edit
  def edit
  end

  # POST /raw_material_items
  # POST /raw_material_items.json
  def create
    @raw_material_item = RawMaterialItem.new(raw_material_item_params)

    respond_to do |format|
      if @raw_material_item.save
        format.html { redirect_to @raw_material_item, notice: 'Raw material item was successfully created.' }
        format.json { render :show, status: :created, location: @raw_material_item }
      else
        format.html { render :new }
        format.json { render json: @raw_material_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_material_items/1
  # PATCH/PUT /raw_material_items/1.json
  def update
    respond_to do |format|
      if @raw_material_item.update(raw_material_item_params)
        format.html { redirect_to @raw_material_item, notice: 'Raw material item was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_material_item }
      else
        format.html { render :edit }
        format.json { render json: @raw_material_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_material_items/1
  # DELETE /raw_material_items/1.json
  def destroy
    @raw_material_item.destroy
    respond_to do |format|
      format.html { redirect_to raw_material_items_url, notice: 'Raw material item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material_item
      @raw_material_item = RawMaterialItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_material_item_params
      params.require(:raw_material_item).permit(:raw_material_id, :nome_materia, :unita_misura, :origine_dato, :note, :quantita, :anno_riferimento)
    end
end

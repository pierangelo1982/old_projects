class RawMaterialsController < ApplicationController
  before_action :set_raw_material, only: [:show, :edit, :update, :destroy]

  # GET /raw_materials
  # GET /raw_materials.json
  def index
    @raw_materials = RawMaterial.all
  end

  # GET /raw_materials/1
  # GET /raw_materials/1.json
  def show
  end

  # GET /raw_materials/new
  def new
    @raw_material = RawMaterial.new
    @raw_material.raw_material_items.build
    @raw_material.walking_hours.build
    @raw_material.finished_products.build
  end

  # GET /raw_materials/1/edit
  def edit
  end

  # POST /raw_materials
  # POST /raw_materials.json
  def create
    @raw_material = RawMaterial.new(raw_material_params)

    respond_to do |format|
      if @raw_material.save
        format.html { redirect_to @raw_material, notice: 'Raw material was successfully created.' }
        format.json { render :show, status: :created, location: @raw_material }
      else
        format.html { render :new }
        format.json { render json: @raw_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_materials/1
  # PATCH/PUT /raw_materials/1.json
  def update
    respond_to do |format|
      if @raw_material.update(raw_material_params)
        format.html { redirect_to @raw_material, notice: 'Raw material was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_material }
      else
        format.html { render :edit }
        format.json { render json: @raw_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_materials/1
  # DELETE /raw_materials/1.json
  def destroy
    @raw_material.destroy
    respond_to do |format|
      format.html { redirect_to raw_materials_url, notice: 'Raw material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_material
      @raw_material = RawMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_material_params
      params.require(:raw_material).permit(:company_id, :descrizione,
      raw_material_items_attributes: [:id, :raw_material_id, :nome_materia, :unita_misura, :origine_dato, :note, :quantita, :anno_riferimento, :_destroy],
      walking_hours_attributes: [:id, :raw_material_id, :veicolo, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento, :_destroy],
      finished_products_attributes: [:id, :raw_material_id, :prodotto, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento, :_destroy])
    end
end

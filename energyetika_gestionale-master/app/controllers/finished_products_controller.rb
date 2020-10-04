class FinishedProductsController < ApplicationController
  before_action :set_finished_product, only: [:show, :edit, :update, :destroy]

  # GET /finished_products
  # GET /finished_products.json
  def index
    @finished_products = FinishedProduct.all
  end

  # GET /finished_products/1
  # GET /finished_products/1.json
  def show
  end

  # GET /finished_products/new
  def new
    @finished_product = FinishedProduct.new
  end

  # GET /finished_products/1/edit
  def edit
  end

  # POST /finished_products
  # POST /finished_products.json
  def create
    @finished_product = FinishedProduct.new(finished_product_params)

    respond_to do |format|
      if @finished_product.save
        format.html { redirect_to @finished_product, notice: 'Finished product was successfully created.' }
        format.json { render :show, status: :created, location: @finished_product }
      else
        format.html { render :new }
        format.json { render json: @finished_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finished_products/1
  # PATCH/PUT /finished_products/1.json
  def update
    respond_to do |format|
      if @finished_product.update(finished_product_params)
        format.html { redirect_to @finished_product, notice: 'Finished product was successfully updated.' }
        format.json { render :show, status: :ok, location: @finished_product }
      else
        format.html { render :edit }
        format.json { render json: @finished_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finished_products/1
  # DELETE /finished_products/1.json
  def destroy
    @finished_product.destroy
    respond_to do |format|
      format.html { redirect_to finished_products_url, notice: 'Finished product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finished_product
      @finished_product = FinishedProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finished_product_params
      params.require(:finished_product).permit(:raw_material_id, :prodotto, :unita_misura, :origine_dato, :note, :ore_marcia, :anno_riferimento)
    end
end

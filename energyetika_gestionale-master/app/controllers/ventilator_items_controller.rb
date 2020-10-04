class VentilatorItemsController < ApplicationController
  before_action :set_ventilator_item, only: [:show, :edit, :update, :destroy]

  # GET /ventilator_items
  # GET /ventilator_items.json
  def index
    @ventilator_items = VentilatorItem.all
  end

  # GET /ventilator_items/1
  # GET /ventilator_items/1.json
  def show
  end

  # GET /ventilator_items/new
  def new
    @ventilator_item = VentilatorItem.new
  end

  # GET /ventilator_items/1/edit
  def edit
  end

  # POST /ventilator_items
  # POST /ventilator_items.json
  def create
    @ventilator_item = VentilatorItem.new(ventilator_item_params)

    respond_to do |format|
      if @ventilator_item.save
        format.html { redirect_to @ventilator_item, notice: 'Ventilator item was successfully created.' }
        format.json { render :show, status: :created, location: @ventilator_item }
      else
        format.html { render :new }
        format.json { render json: @ventilator_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventilator_items/1
  # PATCH/PUT /ventilator_items/1.json
  def update
    respond_to do |format|
      if @ventilator_item.update(ventilator_item_params)
        format.html { redirect_to @ventilator_item, notice: 'Ventilator item was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventilator_item }
      else
        format.html { render :edit }
        format.json { render json: @ventilator_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventilator_items/1
  # DELETE /ventilator_items/1.json
  def destroy
    @ventilator_item.destroy
    respond_to do |format|
      format.html { redirect_to ventilator_items_url, notice: 'Ventilator item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventilator_item
      @ventilator_item = VentilatorItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventilator_item_params
      params.require(:ventilator_item).permit(:ventilator_id, :marca, :modello, :potenza, :anno, :note)
    end
end

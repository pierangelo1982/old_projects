class VentilatorsController < ApplicationController
  before_action :set_ventilator, only: [:show, :edit, :update, :destroy]

  # GET /ventilators
  # GET /ventilators.json
  def index
    @ventilators = Ventilator.all
  end

  # GET /ventilators/1
  # GET /ventilators/1.json
  def show
  end

  # GET /ventilators/new
  def new
    @ventilator = Ventilator.new
    @ventilator.ventilator_items.build
  end

  # GET /ventilators/1/edit
  def edit
  end

  # POST /ventilators
  # POST /ventilators.json
  def create
    @ventilator = Ventilator.new(ventilator_params)

    respond_to do |format|
      if @ventilator.save
        format.html { redirect_to @ventilator, notice: 'Ventilator was successfully created.' }
        format.json { render :show, status: :created, location: @ventilator }
      else
        format.html { render :new }
        format.json { render json: @ventilator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventilators/1
  # PATCH/PUT /ventilators/1.json
  def update
    respond_to do |format|
      if @ventilator.update(ventilator_params)
        format.html { redirect_to @ventilator, notice: 'Ventilator was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventilator }
      else
        format.html { render :edit }
        format.json { render json: @ventilator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventilators/1
  # DELETE /ventilators/1.json
  def destroy
    @ventilator.destroy
    respond_to do |format|
      format.html { redirect_to ventilators_url, notice: 'Ventilator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventilator
      @ventilator = Ventilator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventilator_params
      params.require(:ventilator).permit(:company_id, :note,
      ventilator_items_attributes: [:id, :ventilator_id, :trasformatore, :marca, :modello, :tensione, :note, :_destroy])
    end
end

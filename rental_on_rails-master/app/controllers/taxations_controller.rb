class TaxationsController < ApplicationController
  before_action :set_taxation, only: [:show, :edit, :update, :destroy]

  # GET /taxations
  # GET /taxations.json
  def index
    @taxations = Taxation.all
  end

  # GET /taxations/1
  # GET /taxations/1.json
  def show
  end

  # GET /taxations/new
  def new
    @taxation = Taxation.new
  end

  # GET /taxations/1/edit
  def edit
  end

  # POST /taxations
  # POST /taxations.json
  def create
    @taxation = Taxation.new(taxation_params)

    respond_to do |format|
      if @taxation.save
        format.html { redirect_to @taxation, notice: 'Taxation was successfully created.' }
        format.json { render :show, status: :created, location: @taxation }
      else
        format.html { render :new }
        format.json { render json: @taxation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxations/1
  # PATCH/PUT /taxations/1.json
  def update
    respond_to do |format|
      if @taxation.update(taxation_params)
        format.html { redirect_to @taxation, notice: 'Taxation was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxation }
      else
        format.html { render :edit }
        format.json { render json: @taxation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxations/1
  # DELETE /taxations/1.json
  def destroy
    @taxation.destroy
    respond_to do |format|
      format.html { redirect_to taxations_url, notice: 'Taxation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxation
      @taxation = Taxation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxation_params
      params.require(:taxation).permit(:title, :value, :description)
    end
end

class TypologiesController < ApplicationController
  before_action :set_typology, only: [:show, :edit, :update, :destroy]

  # GET /typologies
  # GET /typologies.json
  def index
    @typologies = Typology.all
  end

  # GET /typologies/1
  # GET /typologies/1.json
  def show
  end

  # GET /typologies/new
  def new
    @typology = Typology.new
  end

  # GET /typologies/1/edit
  def edit
  end

  # POST /typologies
  # POST /typologies.json
  def create
    @typology = Typology.new(typology_params)

    respond_to do |format|
      if @typology.save
        format.html { redirect_to @typology, notice: 'Typology was successfully created.' }
        format.json { render :show, status: :created, location: @typology }
      else
        format.html { render :new }
        format.json { render json: @typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typologies/1
  # PATCH/PUT /typologies/1.json
  def update
    respond_to do |format|
      if @typology.update(typology_params)
        format.html { redirect_to @typology, notice: 'Typology was successfully updated.' }
        format.json { render :show, status: :ok, location: @typology }
      else
        format.html { render :edit }
        format.json { render json: @typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typologies/1
  # DELETE /typologies/1.json
  def destroy
    @typology.destroy
    respond_to do |format|
      format.html { redirect_to typologies_url, notice: 'Typology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typology
      @typology = Typology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typology_params
      params.require(:typology).permit(:name)
    end
end

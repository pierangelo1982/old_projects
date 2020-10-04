class UtilityItemsController < ApplicationController
  before_action :set_utility_item, only: [:show, :edit, :update, :destroy]

  # GET /utility_items
  # GET /utility_items.json
  def index
    @utility_items = UtilityItem.all
  end

  # GET /utility_items/1
  # GET /utility_items/1.json
  def show
  end

  # GET /utility_items/new
  def new
    @utility_item = UtilityItem.new
  end

  # GET /utility_items/1/edit
  def edit
  end

  # POST /utility_items
  # POST /utility_items.json
  def create
    @utility_item = UtilityItem.new(utility_item_params)

    respond_to do |format|
      if @utility_item.save
        format.html { redirect_to @utility_item, notice: 'Utility item was successfully created.' }
        format.json { render :show, status: :created, location: @utility_item }
      else
        format.html { render :new }
        format.json { render json: @utility_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utility_items/1
  # PATCH/PUT /utility_items/1.json
  def update
    respond_to do |format|
      if @utility_item.update(utility_item_params)
        format.html { redirect_to @utility_item, notice: 'Utility item was successfully updated.' }
        format.json { render :show, status: :ok, location: @utility_item }
      else
        format.html { render :edit }
        format.json { render json: @utility_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utility_items/1
  # DELETE /utility_items/1.json
  def destroy
    @utility_item.destroy
    respond_to do |format|
      format.html { redirect_to utility_items_url, notice: 'Utility item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utility_item
      @utility_item = UtilityItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utility_item_params
      params.require(:utility_item).permit(:utility_id, :nome, :marca, :matricola, :potenza, :ore, :vettore, :funzione, :ausiliari)
    end
end

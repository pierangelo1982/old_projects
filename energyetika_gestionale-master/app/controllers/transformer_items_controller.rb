class TransformerItemsController < ApplicationController
  before_action :set_transformer_item, only: [:show, :edit, :update, :destroy]

  # GET /transformer_items
  # GET /transformer_items.json
  def index
    @transformer_items = TransformerItem.all
  end

  # GET /transformer_items/1
  # GET /transformer_items/1.json
  def show
  end

  # GET /transformer_items/new
  def new
    @transformer_item = TransformerItem.new
  end

  # GET /transformer_items/1/edit
  def edit
  end

  # POST /transformer_items
  # POST /transformer_items.json
  def create
    @transformer_item = TransformerItem.new(transformer_item_params)

    respond_to do |format|
      if @transformer_item.save
        format.html { redirect_to @transformer_item, notice: 'Transformer item was successfully created.' }
        format.json { render :show, status: :created, location: @transformer_item }
      else
        format.html { render :new }
        format.json { render json: @transformer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transformer_items/1
  # PATCH/PUT /transformer_items/1.json
  def update
    respond_to do |format|
      if @transformer_item.update(transformer_item_params)
        format.html { redirect_to @transformer_item, notice: 'Transformer item was successfully updated.' }
        format.json { render :show, status: :ok, location: @transformer_item }
      else
        format.html { render :edit }
        format.json { render json: @transformer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transformer_items/1
  # DELETE /transformer_items/1.json
  def destroy
    @transformer_item.destroy
    respond_to do |format|
      format.html { redirect_to transformer_items_url, notice: 'Transformer item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transformer_item
      @transformer_item = TransformerItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transformer_item_params
      params.require(:transformer_item).permit(:transformer_id, :trasformatore, :marca, :modello, :tensione, :note)
    end
end

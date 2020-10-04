class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end


  def cart
      @products = cookies[:tmp_data]
    if @products.blank?
      @products = cookies[:tmp_data] = params[:id]
    else
      cookies[:tmp_data] = @products + ',' + params[:id]
    end
      ##redirect_to request.env["HTTP_REFERER"]
      redirect_to :back, notice: 'Aggiunto al carrello'     
  end


  def delete_item
      @products = cookies[:tmp_delete]
    if @products.blank?
      @products = cookies[:tmp_delete] = params[:id]
    else
      cookies[:tmp_delete] = @products + ',' + params[:id]
    end
      ##redirect_to request.env["HTTP_REFERER"]
      redirect_to :back, notice: 'Cancellato dal carrello'     
  end


  def reset_cart
    cookies.delete :tmp_data
    #redirect_to request.env["HTTP_REFERER"]
    redirect_to :back, notice: 'Carrello svuotato'  
  end




  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.build_custumer
    #@order.orderlines.build
    if cookies[:tmp_data] != nil
      @mycart = cookies[:tmp_data].scan( /\d+/ ) # Make the array
      @mycart.map!{ |s| s.to_i }
    end
  end


  def nuovo
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        OrderMailer.order_email(@order).deliver
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:custumer_id, { product_ids:[] }, :start, :end, :number_day, :cleaning, :insurance, :delivery_id, :taxation_id, :price_pretax, :price_tax, :total, :status,
        orderlines_attributes: [:id, :order_id, :product_id, :quantity, :_destroy],
        custumer_attributes: [:id, :order_id, :name, :lastname, :company, :address, :cap, :city, :phone, :fax, :email, :web, :vat, :note, :codfisc, :_destroy]
        )
    end
end

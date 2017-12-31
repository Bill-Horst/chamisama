class OrdersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end

  def new
  end

  def create
  end

  def destroy
  end

end

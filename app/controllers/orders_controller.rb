class OrdersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    if current_user.admin?
      @orders = Order.includes(:product).all.order(id: :desc)
    else
      @orders = Order.where('user_id = ?',current_user.id).order(id: :desc)
    end
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

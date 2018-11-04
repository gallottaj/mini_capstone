class Api::OrdersController < ApplicationController
  before_action :authenticate_with_http_digest
  def index
   # @orders = Order.where(user_id: current_user.id)
    if current_user
      @orders = current_user.orders
      render "index.json.jbuilder"
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    @user = CartedProduct.where(status:'carted', user_id: current_user.id)
   # @user = User.current_user
   #  # @user = @user.carted_products
    render 'index.json.jbuilder'
  end
end


  # started 'change item in cart to an order' create action !

# def create
#   @user = CartedProduct.where(status:'carted', user_id: current_user.id)
#   @order = Order.new(
#     user_id: current_user.id,
#     subtotal: ,
#     tax: ,
#     total: ,
#     )
#     @order.save
#     p @order.full_messages
#  end



class Api::OrdersController < ApplicationController
  before_action :authenticate_with_http_digest
  # authenticate_with_http_digest
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
    @user = User.first
    @user = @user.carted_products
    render 'index.json.jbuilder'
  end
end

# def create
#     # most basic create action of all time
#     # subtotal
#     # subtotal == quantity * price
#     product = Product.find_by(id: params[:product_id])

#     price = product.price

#     calculated_subtotal = params[:quantity].to_i * price
#     calculated_tax = calculated_subtotal * 0.09
#     calculated_total = calculated_subtotal + calculated_tax

#     @order = Order.new(
#       product_id: params[:product_id],
#       user_id: current_user.id,
#       quantity: params[:quantity],
#       subtotal: calculated_subtotal,
#       total: calculated_total,
#       tax: calculated_tax
#     )
#     @order.save
#     # how can i figure out why this isn't saving
#     p @order.errors.full_messages
#     render "show.json.jbuilder"

#     # intake params
#     # Order.new something something
#     # order.save something something
#     # render the new thing I jut saved
#   end

 



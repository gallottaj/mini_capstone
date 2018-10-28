class Api::OrdersController < ApplicationController
  
  def index
    @orders = Order.all
    render "index.json.jbuilder"
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price

    # my calculations for below
    calculated_subtotal = params[:quantity].to_i * price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      subtotal: calculated_subtotal, 
      tax: calculated_tax, 
      total: calculated_total
      )
    @order.save
    if order.save
      render json:{message: 'Order created successfully'}, 
      status: :created
      render "show.json.jbuilder"
    else
      render json:{message: 'Error'},
       status: :nil
    end
  end
end
 



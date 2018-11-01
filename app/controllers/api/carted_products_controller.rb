class Api::CartedProductsController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])
    cart = CartedProduct.new(product_id: params[:product_id], user_id: current_user.id, quantity: params[:quantity])
    cart.save!
    # render 'show.json.jbuilder'
    if cart.save
      render json: {message: 'Carted successfully'}, status: :created
    else
      render json: {errors: cart.errors.full_messages}, status: :bad_request
    end
  end
end



# product = Product.find_by(id: params[:product_id])

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
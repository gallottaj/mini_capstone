class Api::CartedProductsController < ApplicationController
# before_action :authenticate_user

  def index
    @cart = CartedProduct.where(user_id: current_user.id)
    if current_user
      @cart = current_user.carted_products
      render "index.json.jbuilder"
    else
      render json: [], status: :unauthorized
    end
  end

 # Make a CartedProducts index action. Note that this shouldn’t show ALL the carted products - it should only display the current user’s carted products that have a status of “carted”!


  def create
    product = Product.find_by(id: params[:product_id])
    cart = CartedProduct.new(product_id: params[:product_id], user_id: current_user.id, quantity: params[:quantity])
    cart.save!
    if cart.save
      render json: {message: 'Carted!'}, status: :carted
    else
      render json: {errors: cart.errors.full_messages}, status: :bad_request
    end
  end
end


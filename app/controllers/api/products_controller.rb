class Api::ProductsController < ApplicationController
  # before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    # p 'current_user'
    # p current_user
    # Change the index action to allow for searching by name.
    @products = Product.all
    @products.order!(:id => :desc)
    render "index.json.jbuilder"
  end

  # def show
  #   # show one specific product
  #   product_id = params[:id]
  #   @product = Product.find_by(id: product_id)
  #   render "show.json.jbuilder"
  # end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    if product.save
      render json: {message: 'created successfully'}, status: :created
    else
      render json: {errors: product.errors.full_messages}, status: :bad_request
    end
  end
end

#   def update           

#    #render errors.json.jbuilder to show user
#     # combines 2 actions
#     # get the correct product ==> show
#     # change the product ==> kind of like create
#     product_id = params[:id]
#     @product= Product.find_by(id: product_id)
#     # change this product
#     @product.name = "water bottle"
#     @product.price = 15
#     @product.image_url = " "
#     @product.description = "reusable water bottle"
#     @product.save
#   end
# end
#   
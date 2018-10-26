class Api::ProductsController < ApplicationController
  before_action :authenticate_user

  def index
    p 'current_user'
    p current_user
    # Change the index action to allow for searching by name.
    @products = Product.all
    @products.order!(:id => :desc)
    render "index.json.jbuilder"
  end

  def show
    # show one specific product
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    if price > 0  #happy path
      @product = Product.new(name: "remote control", price: 10, image_url: " ", description: "universal remote")
      @product.save
      render "create.json.jbuilder"
    else
      errors.json.jbuilder #sad path
    end
  end

  def update           

   #render errors.json.jbuilder to show user
    # combines 2 actions
    # get the correct product ==> show
    # change the product ==> kind of like create
    product_id = params[:id]
    @product= Product.find_by(id: product_id)
    # change this product
    @product.name = "water bottle"
    @product.price = 15
    @product.image_url = " "
    @product.description = "reusable water bottle"
    @product.save
  end

  # def destroy
  #   product_id = params [:id]
  #   @product Product.find_by(id: product_id)
  #   @product.destroy
  #   render "destroy.json.jbuilder"
  # end
end


#what validations should a product have?

# name:
# => presence - a name has to exit
# => uniqueness - no duplicates

#price
# => presence - it cant be free
# => numericality - less than whatever picked for decimal

#   # => at least 10 characters
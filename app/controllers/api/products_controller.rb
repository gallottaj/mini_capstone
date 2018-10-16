class Api::ProductsController < ApplicationController

  def index
    # show all products
    @products = Product.all
    render "index.json.jbuilder"
  end

 def show
    # show one specific product
    product_id = params[:id]
    @products = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    #make a new product
    @product = Product.new(name: "remote control", price: 10, image_url: " ", description: "universal remote")
    @product.save
    render "create.json.jbuilder"
  end

  def update
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

  def destroy
    product_id = params [:id]
    @product Product.find_by(id: product_id)
    @product.destroy
    render "destroy.json.jbuilder"
  end
end
class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end
  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end
end


# @product = Product.new(name: "remote control", price: 10, description: "universal remote")
#       @product.save
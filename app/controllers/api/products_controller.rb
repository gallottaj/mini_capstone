class Api::ProductsController < ApplicationController

  def index
    # show all products
    @products = Product.all
    render "product1.json.jbuilder"
  end
end
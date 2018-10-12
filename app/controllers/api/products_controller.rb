class Api::ProductsController < ApplicationController
  def show_product1
    @product1 = p "Hello"
    render "product1.json.jbuilder"
  end
end

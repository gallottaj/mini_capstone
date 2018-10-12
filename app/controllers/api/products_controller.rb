class Api::ProductsController < ApplicationController
  def show_product1
    @product1 = product1
    render "product1.json.jbuilder"
  end
end

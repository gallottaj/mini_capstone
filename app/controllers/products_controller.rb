class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end
  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def new
    render 'new.html.erb'
  end
  def create
    @product = Product.new(
      name: params[:name], price: params[:price],
      description: params[:description], 
      supplier_id: 1,
    )
    @product.save!
    redirect_to "/products"
  end
  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.save
    redirect_to "/products/#{@product.id}"
  end
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to "/products"
  end
  def edit
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end
end
class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.create( product_params )
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  private
  def product_params
    params.require(:product).permit(:image, :title, :description)
  end
end

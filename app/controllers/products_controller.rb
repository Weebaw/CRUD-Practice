class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit(:name, :description, :price)
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product), notice: "Product was created successfully"
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    product_params = params.require(:product).permit(:name, :description, :price)
    @product.update(product_params)
    redirect_to products_path, notice: "product was updated successfully"
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to products_path, notice: "Product was Deleted"
  end

end

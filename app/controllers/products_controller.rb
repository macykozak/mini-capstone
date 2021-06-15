class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      # image_url: params[:image_url],
      supplier_id: params[:supplier_id],
    )
    if product.save
      Image.create(product_id: product.id, url: params[:image_url])
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def update
    products = Product.find_by(id: params[:id])
    products.name = params[:name] || products.name
    products.price = params[:price] || products.price
    products.description = params[:description] || products.description
    # products.image_url = params[:image_url] || products.image_url

    if products.save
      render json: products.as_json
    else
      render json: { errors: product.errors.full_messages }, status: 422
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed." }
  end

  def first_product_method
    one_product = Product.find_by(id: 1)
    render json: one_product
  end
end

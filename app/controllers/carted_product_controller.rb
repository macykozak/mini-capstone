class CartedProductController < ApplicationController

  def index
    products = CartedProduct.all
    render json: products
  end

  def create
    products = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: params [:order_id],
      status: params[:status],
      user_id: params[:user_id],
      # image_url: params[:image_url],
    )
    if product.save
      Image.create(product_id: product.id, url: params[:image_url])
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 422
  end

  STATUSES = { "created_roducts#ordered" => "Order placed",
    "created_roducts#changed" => "A change has been made to the order",
    "created_roducts#shipped" => "The order has been shipped",
    "created_roducts#archived" => "The order has been archived" }

def self.valid_statuses
STATUSES.keys
end

validates :status, inclusion: { in: valid_statuses },
          presence: true

def extended_status
STATUSES[status]
end

  def status
    product = CartedProduct.current_user.find_by(id: "Carted"[:id])
    render json: { message: "Carted"}
  if current_user
    render json: { message: "Carted"}
  end

  def destroy
    product = CartedProduct.find_by(id: params[:id])
    render json: { status: "removed." }
  end
end

class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price
    calculated_subtotal = price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    order.save
    render json: order
  end
end

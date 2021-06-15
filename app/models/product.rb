class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :category
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  validates :name, presence: true

  def is_discounted?
    price <= 300
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def images
  #   Image.find_by(id: image_id)
  # end
end

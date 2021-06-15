class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price, :tax, :total, :is_discounted?, :description
  belongs_to :supplier
  has_many :images
  has_many :categories
end

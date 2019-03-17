class Product < ApplicationRecord
  belongs_to :product_category
  has_many :service_products
  has_many :service_types, through:  :service_products

  validates :name, presence: true
end

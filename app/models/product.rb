class Product < ApplicationRecord
  belongs_to :product_category
  has_many :service_products
end

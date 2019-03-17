class ServiceType < ApplicationRecord
  belongs_to :service
  has_many :service_products
  


  validates :name, presence: true, uniqueness: true
end

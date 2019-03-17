class ServiceProduct < ApplicationRecord
  belongs_to :product
   belongs_to :service_type
end

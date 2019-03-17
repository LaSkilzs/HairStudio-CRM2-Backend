class ServiceRequest < ApplicationRecord
  belongs_to :appointment
  belongs_to :service_type
end

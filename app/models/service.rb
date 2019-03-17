class Service < ApplicationRecord
  belongs_to :salon
  belongs_to :stylist_info
  has_many :service_types
end

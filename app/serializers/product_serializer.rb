class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :quantity, :cost

  has_many :service_types
end

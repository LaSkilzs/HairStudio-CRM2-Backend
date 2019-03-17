class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :service_types

  has_many :service_types
end

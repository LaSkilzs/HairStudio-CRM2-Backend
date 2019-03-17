class SalonSerializer < ActiveModel::Serializer
  attributes :id,:name, :street_1, :city, :state, :phone, :email, :web

  has_many :schedules
  has_many :messages
end

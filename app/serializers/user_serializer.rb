class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :role, :image

  has_many :profiles
  has_many :hair_cards
  has_many :appointments
  has_one :stylist_info
  has_many :schedules
end

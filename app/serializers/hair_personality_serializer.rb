class HairPersonalitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hair_cards

  has_many :hair_cards
end

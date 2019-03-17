class HairPersonality < ApplicationRecord
   has_many :hair_cards

   validates :name, presence: true
   validates :description, presence: true
end

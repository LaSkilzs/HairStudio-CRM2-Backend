require 'rails_helper'

RSpec.describe HairPersonality, type: :model do
  context 'hair_personality validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :hair_personality).to be_valid
    end
    
    it 'test for the presence of a name' do
      hair_personality = FactoryBot.build :hair_personality, name: ""
      expect(hair_personality).not_to be_valid
      expect(hair_personality.errors[:name]).to include("can't be blank")
    end
    it 'test for the presence of a description' do
      hair_personality = FactoryBot.build :hair_personality, description: ""
      expect(hair_personality).not_to be_valid
      expect(hair_personality.errors[:description]).to include("can't be blank")
    end
  end
end

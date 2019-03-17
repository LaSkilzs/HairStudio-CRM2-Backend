require 'rails_helper'

RSpec.describe HairCard, type: :model do
  context 'hair_card validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :hair_card).to be_valid
    end

  end
end


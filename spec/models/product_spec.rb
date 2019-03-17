require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'product validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :product).to be_valid
    end
    
    it 'test for the presence of a name' do
      product = FactoryBot.build :product, name: ""
      expect(product).not_to be_valid
      expect(product.errors[:name]).to include("can't be blank")
    end
  end
end

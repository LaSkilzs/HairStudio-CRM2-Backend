require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  context 'product_category validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :product_category).to be_valid
    end
  
    end
end

require 'rails_helper'


RSpec.describe ServiceProduct, type: :model do
  context 'service request validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :service_product).to be_valid
    end
    
    
  end
end

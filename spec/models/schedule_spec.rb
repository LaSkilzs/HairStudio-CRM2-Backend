require 'rails_helper'


RSpec.describe Schedule, type: :model do
  context 'service request validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :schedule).to be_valid
    end 
    
  end
end


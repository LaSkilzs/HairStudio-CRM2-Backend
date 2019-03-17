require 'rails_helper'


RSpec.describe ServiceRequest, type: :model do
  context 'service request validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :service_request).to be_valid
    end

  end
end


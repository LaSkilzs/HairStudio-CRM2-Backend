require 'rails_helper'

RSpec.describe ServiceType, type: :model do
  context 'service type validations' do
    it 'test for a valid factory' do
      expect(FactoryBot.build :service_type).to be_valid
    end

    it 'name can not be empty' do
      serType = FactoryBot.build :service_type, name: ""
      expect(serType).not_to be_valid
      expect(serType.errors[:name]).to include("can't be blank")
    end

    it 'name can not be duplicated' do
      serv = FactoryBot.build :service_type
      serv2 = serv.dup
      expect(serv2).not_to be_valid
    end
  end

  
end
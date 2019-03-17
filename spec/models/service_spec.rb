require 'rails_helper'

RSpec.describe Service, type: :model do
  context 'validations' do
    it 'test that a factory can be created' do
      expect(FactoryBot.build :service).to be_valid
    end

    it 'name can not be empty' do
      service = FactoryBot.build :service, name: ""
      expect(service).not_to be_valid
      expect(service.errors[:name]).to include("can't be blank")
    end
  end
end


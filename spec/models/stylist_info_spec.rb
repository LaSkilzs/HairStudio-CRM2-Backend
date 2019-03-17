require 'rails_helper'

RSpec.describe StylistInfo, type: :model do
 context ' stylistInfo validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :stylist_info).to be_valid
    end
    
    it 'test for the presence of a certification' do
      cert = FactoryBot.build :stylist_info, certification: ""
      expect(cert).not_to be_valid
      expect(cert.errors[:certification]).to include("can't be blank")
    end
    it 'test for the presence of a organization' do
      cert= FactoryBot.build :stylist_info, organization: ""
      expect(cert).not_to be_valid
      expect(cert.errors[:organization]).to include("can't be blank")
    end
  end
end



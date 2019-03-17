require 'rails_helper'

RSpec.describe Gallery, type: :model do
  context 'gallery validations' do 
    # it 'test for a valid factory' do
    #   expect(FactoryBot.build :gallery).to be_valid
    # end
    
    it 'test for the presence of a image' do
      gallery = FactoryBot.build :gallery, image: ""
      expect(gallery).not_to be_valid
      expect(gallery.errors[:image]).to include("can't be blank")
    end
    
    it 'test for the presence of a gallerable type' do
      gallery = FactoryBot.build :gallery, gallerable_type: ""
      expect(gallery).not_to be_valid
      expect(gallery.errors[:gallerable_type]).to include("can't be blank")
    end
  end
end

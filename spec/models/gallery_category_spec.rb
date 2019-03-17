require 'rails_helper'

RSpec.describe GalleryCategory, type: :model do
  context 'gallery_category validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :gallery_category).to be_valid
    end
    
    it 'test for the presence of a name' do
      gallery_category = FactoryBot.build :gallery_category, name: ""
      expect(gallery_category).not_to be_valid
      expect(gallery_category.errors[:name]).to include("can't be blank")
    end
  
  end
end

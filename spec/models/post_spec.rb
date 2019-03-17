require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'posts validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :post).to be_valid
    end
    
    it 'test for the presence of a name' do
      post = FactoryBot.build :post, name: ""
      expect(post).not_to be_valid
      expect(post.errors[:name]).to include("can't be blank")
    end
  end
end


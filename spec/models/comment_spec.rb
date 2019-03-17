require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'comment validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :comment).to be_valid
    end
    
    it 'test for the presence of a message' do
      comment = FactoryBot.build :comment, message: ""
      expect(comment).not_to be_valid
      expect(comment.errors[:message]).to include("can't be blank")
    end
  
  end
end


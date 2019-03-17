require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'message validations' do 
    it 'test for a valid factory' do
      expect(FactoryBot.build :message).to be_valid
    end
    
    it 'test for the presence of a name' do
      message = FactoryBot.build :message, name: ""
      expect(message).not_to be_valid
      expect(message.errors[:name]).to include("can't be blank")
    end
  end

  context 'validates the email attribute' do
    it 'test for the presence of an email' do
      message = FactoryBot.build :message, email: ""
      expect(message).not_to be_valid
      expect(message.errors[:email]).to include("can't be blank")
    end

    it 'test for uniqueness of an email' do
      message = Message.new(name: "Daisy", email: "message@example.com", phone: "908-909-0087", message: "Hey What's up", salon_id: 1)
      message.save
      m = message.dup
      expect(m).not_to be_valid
    end

    it 'test for the correct format of an email' do
    message = FactoryBot.build :message, email: "l..lycom"
    expect(message).not_to  be_valid
    expect(message.errors[:email]).to include("The format of Email is Invalid")
    end
  end

  context 'validates mobile attributes' do
    it 'test for the presence of a  phone' do
      message = FactoryBot.build :message, phone: " "
      expect(message).not_to be_valid
      expect(message.errors[:phone]).to include("can't be blank")
    end

    it 'test for the correct format of a phone ' do
    message = FactoryBot.build :message, phone: "2893484"
    expect(message).not_to be_valid
    expect(message.errors[:phone]).to include("phone format is invalid")
    end
  end

end


require 'rails_helper'

RSpec.describe Profile, type: :model do
  it 'test for a valid factory' do
    expect(FactoryBot.build :profile).to be_valid
  end
   
  context 'validates profile attributes presence' do
    
    it 'test for the presence of the first_name' do
      profile = FactoryBot.build :profile, first_name: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:first_name]).to include("can't be blank")
    end
    
    it 'test for the presence of the last_name' do
      profile = FactoryBot.build :profile, last_name: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:last_name]).to include("can't be blank")
    end
    
    it 'test for the presence of street_1' do
      profile = FactoryBot.build :profile, street_1: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:street_1]).to include("can't be blank")
    end
    
    it 'test for the presence of a city' do
      profile = FactoryBot.build :profile, city: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:city]).to include("can't be blank")
    end
    
    it 'test for the presence of a state' do
      profile = FactoryBot.build :profile, state: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:state]).to include("can't be blank")
    end
  end
 
  context 'validates birthday attributes' do
    it 'test for the presence of birthday' do
      profile = FactoryBot.build :profile, birthday: " "
      expect(profile).not_to be_valid 
    end

    it 'test for the correct date of birthday' do
      profile = Profile.new(first_name: "Daisy", last_name: "Mark", birthday: Date.yesterday, email: "profile@example.com", home: "908-909-0087", mobile: "908-234-0987", street_1: "19 Williams Ave", city: "Orange", state: "New Jersey", zip: "09878", user_id: 1)
      profile.valid? 
      expect(profile).not_to be_valid
    end
  end

   context 'validates mobile attributes' do
    it 'test for the presence of a home phone' do
      profile = FactoryBot.build :profile, home: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:home]).to include("can't be blank")
    end

    it 'test for the correct format of a home phone' do
    profile = FactoryBot.build :profile, home: "2893484"
    expect(profile).not_to be_valid
    expect(profile.errors[:home]).to include("phone format is invalid")
    end

    it 'test for the presence of a mobile phone' do
      profile = FactoryBot.build :profile, mobile: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:mobile]).to include("can't be blank")
    end

    it 'test for the correct format of a mobile phone' do
    profile = FactoryBot.build :profile, mobile: "2893484"
    expect(profile).not_to be_valid
    expect(profile.errors[:mobile]).to include("phone format is invalid")
    end
  end

 context 'validates zip-code attributes' do
    it 'test for the presence of a zip code' do
      profile = FactoryBot.build :profile, zip: " "
      expect(profile).not_to be_valid
      expect(profile.errors[:zip]).to include("can't be blank")
    end

    it 'test for the correct length of a zip code' do
      profile = FactoryBot.build :profile, zip: "092"
      expect(profile).not_to be_valid
    end
  end

  context 'validates the email attribute' do
    it 'test for the presence of an email' do
      profile = FactoryBot.build :profile, email: ""
      expect(profile).not_to be_valid
      expect(profile.errors[:email]).to include("can't be blank")
    end

    it 'test for uniqueness of an email' do
      profile = Profile.new(first_name: "Daisy", last_name: "Mark", birthday: Date.yesterday, email: "profile@example.com", home: "908-909-0087", mobile: "908-234-0987", street_1: "19 Williams Ave", city: "Orange", state: "New Jersey", zip: "09878", user_id: 1)
      profile.save
      p = profile.dup
      expect(p).not_to be_valid
    end

    it 'test for the correct format of an email' do
    profile = FactoryBot.build :profile, email: "l..lycom"
    expect(profile).not_to  be_valid
    expect(profile.errors[:email]).to include("The format of Email is Invalid")
    end
  end

end

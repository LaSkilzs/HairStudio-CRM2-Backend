require 'rails_helper'

RSpec.describe User, type: :model do
  context "user model username validation tests" do
  it 'should test for a valid factory bot' do
    expect(FactoryBot.build :user).to be_valid
  end

  it 'test for the presence of username' do
    user = FactoryBot.build :user, username: ""
    expect(user).not_to be_valid
    expect(user.errors[:username]).to include("can't be blank")
  end

  it 'test that username.length > 5' do
    user = FactoryBot.build :user, username: "Bob"
    expect(user).not_to be_valid
  end

  it 'test that username is unique' do
    user = FactoryBot.build :user
    user2 = user.dup
    expect(user2).not_to be_valid
  end
end

  context 'user model password validation tests' do
    it 'test for the presence of a password' do
      user = FactoryBot.build :user, password_digest: ""
      expect(user).not_to be_valid
      expect(user.errors[:password_digest]).to include("can't be blank")
    end

    it 'test that the password.length > 5' do
      user = FactoryBot.build :user, password_digest: "23rw"
      expect(user).not_to be_valid
    end

    it 'test that password is unique' do
      user = FactoryBot.build :user
      user2 = user.dup
      expect(user2).not_to be_valid
    end
  end

  context 'user model role validation tests' do
    it 'test for the presence of a role' do
      user = FactoryBot.build :user, role: ""
      expect(user).not_to be_valid
      expect(user.errors[:role]).to include("can't be blank")
    end
  end
end

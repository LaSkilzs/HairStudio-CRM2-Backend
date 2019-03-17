require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context 'validate the scheduling an appointment' do
    it 'tests that a valid factory is created' do
      expect(FactoryBot.build :appointment).to be_valid
    end
  end
end

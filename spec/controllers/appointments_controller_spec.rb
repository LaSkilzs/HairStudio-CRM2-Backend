require 'rails_helper'

RSpec.describe Api::V1::AppointmentsController, type: :controller do 
  describe 'require a list of all appointments' do 

    it 'should route to appointments index' do
      expect(get 'api/v1/appointments/appointments#index').to 
      route_to('appointments#index')
    end
  end
end

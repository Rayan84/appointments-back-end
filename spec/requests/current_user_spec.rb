require 'rails_helper'

RSpec.describe 'Unauthorized status', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/login'
      expect(response).to have_http_status(:ok)
    end


    # it "logs in" do
    #   user_one = User.create(email: 'user_one@email.com', password: 'password')
    #   post "/login", params: {email:'email@email.com', password: 'password' }
    #   response.status.should be(201)
    # end


  end
end

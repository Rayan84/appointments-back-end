require 'rails_helper'

RSpec.describe 'Unauthorized status', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/login'
      expect(response).to have_http_status(:ok)
    end
  end
end

require 'rails_helper'

RSpec.describe 'Unauthorized status', type: :request do
  describe 'GET /index' do
    it 'returns http unauthorized' do
      get '/current_user/'
      expect(response).to have_http_status(:unauthorized)
    end
  end
end

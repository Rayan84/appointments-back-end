require 'rails_helper'
describe 'post an item route', type: :request do
 
  before(:each) do
    post '/signup', params: { user: { email: "user_six@email.com", password: "password" } }
  end

  it 'returns success' do
    expect(response).to have_http_status(:success)
  end
  it 'returns the question\'s answer' do
    expect(JSON.parse(response.body)['status']['code']).to eq(200)
  end
  it 'returns email for registered account' do
    expect(JSON.parse(response.body)['data']['email']).to eq('user_six@email.com')
  end
  it 'returns numeric value for user id' do
    expect(JSON.parse(response.body)['data']['id']).to be_an(Numeric)
  end
  it 'returns Signed up successfully message' do
    expect(JSON.parse(response.body)['status']['message']).to eq("Signed up sucessfully.")
  end

end
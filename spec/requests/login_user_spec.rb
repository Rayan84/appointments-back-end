require 'rails_helper'
describe 'user log in', type: :request do


  before(:each) do
    User.create(email: "user_seven@email.com", password: "password")

    post '/login', params: { user: { email: "user_seven@email.com", password: "password" } }
  end

  it 'returns success' do
    expect(response).to have_http_status(:success)
  end
  it 'returns status code 200' do
    expect(JSON.parse(response.body)['status']['code']).to eq(200)
  end
  it 'returns email for registered account' do
    expect(JSON.parse(response.body)['data']['email']).to eq('user_seven@email.com')
  end
  it 'returns numeric value for user id' do
    expect(JSON.parse(response.body)['data']['id']).to be_an(Numeric)
  end
  it 'returns Signed up successfully message' do
    expect(JSON.parse(response.body)['status']['message']).to eq("Success.")
  end
end



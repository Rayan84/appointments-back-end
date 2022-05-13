require 'rails_helper'
describe 'Create reserved', type: :request do
  before(:each) do
    @user_four = User.create(email: 'user_four@email.com', password: 'password')
    item_two = Item.create(name: 'IVA E-GO S4 ', price: 1800,
                           photo: 'https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/i/v/iva-ego-s4-matblauw-voorkant.jpg',
                           description: 'This matte blue IVA E-GO S4 is another beautiful e-scooter from IVA.')
    post '/login', params: { user: { email: 'user_four@email.com', password: 'password' } }

    post '/api/v1/reserveds/', params: { reserved: { user_id: @user_four.id, item_id: item_two.id } }
  end

  it 'returns success code' do
    expect(response).to have_http_status(:success)
  end
  it 'checks Success' do
    expect(JSON.parse(response.body)['success']).to eq('Success')
  end
  it 'checks existence of reservation Added Successfully message' do
    expect(JSON.parse(response.body)['message']).to eq('reservation Added Successfully')
  end
  it 'validates numericality of reservation id' do
    expect(JSON.parse(response.body)['data']['id']).to be_an(Numeric)
  end
  it 'validates user id is same as reserved item user id' do
    expect(JSON.parse(response.body)['data']['user_id']).to eq(@user_four.id)
  end
end

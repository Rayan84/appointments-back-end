require 'rails_helper'
describe 'get  items routes', type: :request do
  it 'returns status success when getting item:id ' do
    item_one = Item.create(name: 'IVA E-GO S4 ', price: 1800,
                           photo: 'https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/i/v/iva-ego-s4-matblauw-voorkant.jpg',
                           description: 'This matte blue IVA E-GO S4 is another beautiful e-scooter from IVA.')
    get "/api/v1/items/#{item_one.id}"
    expect(response).to have_http_status(:success)
  end

  it 'returns status code 200' do
    get '/api/v1/items'
    expect(response).to have_http_status(:success)
  end

  it 'returns http unauthorized for non-logged in visitor' do
    get '/current_user/'
    expect(response).to have_http_status(:unauthorized)
  end


end

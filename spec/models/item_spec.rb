require 'rails_helper'

RSpec.describe Item, type: :model do
  item = Item.new(name: 'scooter', photo: 'my_photo', description: 'Electric scooter', price: 7000)

  it 'should be invalid without email parameter' do
    item_two = Item.new(name: 'scooter')

    expect(item_two).not_to be_valid
  end

  before { item.save }

  it 'should be valid' do
    expect(item).to be_valid
  end

  it 'should have many reservation' do
    reserveds = Item.reflect_on_association(:reserveds)
    expect(reserveds.macro).to eq(:has_many)
  end

  it 'isn\'t valid without name' do
    item.name = ''
    expect(item).to_not be_valid
  end

  it 'isn\'t valid with name less than 3 characters' do
    item.name = 'ha'
    expect(item).to_not be_valid
  end

  it 'isn\'t valid with no photo' do
    item.photo = ''
    expect(item).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Reserved, type: :model do
  user = User.create(email: 'abc@email.com', password: 'password') 
  item = Item.create(name: 'Scooter XS 214', photo: 'my_photo', description: 'Electric scooter', price: 7000)
  reser = Reserved.create(user_id: user.id, item_id: item.id)



  it 'should be valid' do
    expect(reser).to be_valid
  end

  it 'should belongs to item' do
    item = Reserved.reflect_on_association(:item)
    expect(item.macro).to eq(:belongs_to)
  end

  it 'should belongs to user' do
    user = Reserved.reflect_on_association(:user)
    expect(user.macro).to eq(:belongs_to)
  end

  it 'isn\'t valid without name' do
    reser.user_id = ''
    expect(reser).to_not be_valid
  end

  it 'isn\'t valid with name less than 3 characters' do
    reser.item_id = ''
    expect(reser).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(email: 'abc@email.com', password: 'password')
  before { user.save }

  # it 'should have many items' do
  #   item = User.reflect_on_association(:items)
  #   expect(item.macro).to eq(:has_many)
  # end

  it 'should have many reservation' do
    reservation = User.reflect_on_association(:reserveds)
    expect(reservation.macro).to eq(:has_many)
  end

  it 'return invalid user' do
    user.email = ''
    expect(user).to_not be_valid
  end

  it 'return invalid user name' do
    user.email = 'am'
    expect(user).to_not be_valid
  end
end

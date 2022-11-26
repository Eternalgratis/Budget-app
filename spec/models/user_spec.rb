require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.new(
      name: 'Teetee',
      email: 'teetee1@gmail.com',
      password: 'teetee12'
    )
  end

  it '@user created should be valid' do
    expect(@user).to be_valid
  end

  it 'name value should be present' do
    @user.name = 'Teetee'
    expect(@user.name).to eq('Teetee')
  end

  it 'email value should be present' do
    @user.email = 'teetee@gmail.com'
    expect(@user.email).to eq('teetee@gmail.com')
  end

  it 'password value should be present' do
    @user.password = 'teetee12'
    expect(@user.password).to eq('teetee12')
  end
end

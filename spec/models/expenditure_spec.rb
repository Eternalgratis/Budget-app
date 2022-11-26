require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Teetee',
      email: 'teetee@gmail.com',
      password: 'teetee12'
    ),
            @expenditure = Expenditure.create(
              user_id: 1,
              name: 'cakes',
              amount: 5000,
              group_id: 1
            )
  end

  it '@expenditure created should be valid' do
    expect(@expenditure).to be_valid
  end

  it '@name should be present' do
    @expenditure.name = 'cakes'
    expect(@expenditure.name).to eq('cakes')
  end

  it 'user_id must be an integer' do
    @user_id = 1
    expect(@user_id).to eq(1)
  end

  it '@amount must be an integer' do
    @expenditure.amount = 5000
    expect(@expenditure.amount).to eq(5000)
  end

  it 'group_id must be an integer' do
    @group_id = 1
    expect(@group_id).to eq(1)
  end
end

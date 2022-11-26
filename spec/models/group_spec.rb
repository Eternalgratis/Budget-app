require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Teetee',
      email: 'teetee@gmail.com',
      password: 'teetee12'
    ),

            @group = Group.create(
              name: 'cakes',
              user_id: 1,
              icon: 'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2015/03/chocolateWhiteDark-454384771-770x533-1.jpg'
            )
  end

  it '@group created should be valid' do
    expect(@group).to be_valid
  end

  it 'name value should be present' do
    @group.name = 'cakes'
    expect(@group.name).to eq('cakes')
  end

  it 'user_id must be an integer' do
    @user_id = '1'
    expect(@user_id).to eq('1')
  end

  it 'icon value should be present' do
    @group.icon = 'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2015/03/chocolateWhiteDark-454384771-770x533-1.jpg'
    expect(@group.icon).to eq('https://health.clevelandclinic.org/wp-content/uploads/sites/3/2015/03/chocolateWhiteDark-454384771-770x533-1.jpg')
  end
end

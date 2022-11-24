require 'rails_helper'

RSpec.describe User, type: :model do
    before(:all) do
        @user = User.new(
        name: 'Teetee',
        email: 'teetee@gmail.com',
        password: 'teetee12'
        )
  end

  it '@user created should be valid' do
    expect(@user).to be_valid
  end
end
require 'rails_helper'

RSpec.describe ExpendituresController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @address = get '/expenditures'
    end

    it 'it should return a valid status' do
      expect(@address).to eq(302)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/expenditures/show'
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/expenditures/new'
      expect(response).to have_http_status(302)
    end
  end
end

require 'rails_helper'

RSpec.describe Api::V1::FavoritesController, type: :controller do
  describe 'GET #index' do
    before { allow(controller).to receive(:authorized).and_return(true) }

    it 'returns http success' do
      get :index

      expect(response.status).to eq(200)
    end

    it 'returns all favorites' do
      create_list(:favorite, 2)
      get :index
      items = JSON.parse(response.body)

      expect(items.count).to eq(2)
    end
  end
end

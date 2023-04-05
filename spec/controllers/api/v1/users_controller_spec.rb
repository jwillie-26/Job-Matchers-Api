require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'GET #index' do
    before { allow(controller).to receive(:authorized).and_return(true) }

    it 'returns http success' do
      get :index

      expect(response.status).to eq(200)
    end

    it 'returns all users' do
      create_list(:user, 1)
      get :index
      items = JSON.parse(response.body)

      expect(items.count).to eq(1)
    end
  end

  describe 'POST create' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      post :create, params: { username: 'Jonny', password: 'secret' }
    end

    it 'returns the created user' do
      expect(JSON.parse(response.body)['user']['username']).to eq('Jonny')
    end
  end
end

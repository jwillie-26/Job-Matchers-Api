require 'rails_helper'

RSpec.describe Api::V1::JobsController, type: :controller do
  describe 'GET #index' do
    before { allow(controller).to receive(:authorized).and_return(true) }

    it 'returns http success' do
      get :index

      expect(response.status).to eq(200)
    end

    it 'returns all jobs' do
      create_list(:job, 2)
      get :index
      items = JSON.parse(response.body)

      expect(items.count).to eq(2)
    end
  end

  describe 'POST create' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      post :create, params: { job: { company: 'Amazon', position: 'junior dev',
                                     salary: '80k', description: 'assist senior devs', location: 'bocachica' } }
    end

    it 'returns a job' do
      expect(JSON.parse(response.body)['company']).to eq('Amazon')
    end
  end
end

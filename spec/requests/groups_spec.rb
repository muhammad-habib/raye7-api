require 'rails_helper'

RSpec.describe 'Groups API', type: :request do
  # initialize test data
  let!(:groups) { create_list(:group, 10) }
  let(:group_id) { groups.first.id }

  # Test suite for GET /groups
  describe 'GET /groups' do
    # make HTTP get request before each example
    before { get '/groups' }

    it 'returns groups' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /groups
  describe 'POST /groups' do
    # valid payload
    let(:valid_attributes) { { name: 'china' } }

    context 'when the request is valid' do
      before { post '/groups', params: valid_attributes }

      it 'creates a group' do
        expect(json['name']).to eq('china')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/groups', params: {} }

      it 'returns status code 442' do
        expect(response).to have_http_status(422)
      end
    end
  end

end
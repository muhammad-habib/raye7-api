require 'rails_helper'

RSpec.describe 'Places API', type: :request do
  # initialize test data
  let!(:places) { create_list(:place, 10) }
  let(:place_id) { places.first.id }

  # Test suite for GET /places
  describe 'GET /places' do
    # make HTTP get request before each example
    before { get '/places' }

    it 'returns places' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /places
  describe 'POST /places' do
    # valid payload
    let(:valid_attributes) { { name: 'Maadi', latitude: 12, longitude: 10 } }

    context 'when the request is valid' do
      before { post '/places', params: valid_attributes }

      it 'creates a place' do
        expect(json['name']).to eq('Maadi')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/places', params: { name: 'Zamalek' } }

      it 'returns status code 442' do
        expect(response).to have_http_status(422)
      end
    end
  end

end
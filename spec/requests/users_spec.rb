require 'rails_helper'

RSpec.describe 'users API', type: :request do
  # # initialize test data
  # let!(:users) { create_list(:user, 10) }
  # let(:user_id) { users.first.id }
  #
  # # Test suite for GET /users
  # describe 'GET /users' do
  #   # make HTTP get request before each example
  #   before { get '/users' }
  #
  #   it 'returns users' do
  #     # Note `json` is a custom helper to parse JSON responses
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #   end
  #
  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end
  # end

  # Test suite for POST /users
  describe 'POST /users' do
    # valid payload
    let(:valid_attributes) { { fName: 'mido', lName: 'mosad', phone: 45555, group_id: 1, work_id: 1, home_id: 2  } }

    # context 'when the request is valid' do
    #   before { post '/users', params: valid_attributes }
    #
    #   it 'creates a user' do
    #     expect(json['fName']).to eq('mido')
    #   end
    #
    #   it 'returns status code 201' do
    #     expect(response).to have_http_status(201)
    #   end
    # end

    # context 'when the request is invalid' do
    #   before { post '/users', params: { name: 'miso' } }
    #
    #   it 'returns status code 442' do
    #     expect(response).to have_http_status(422)
    #   end
    # end
  end

end
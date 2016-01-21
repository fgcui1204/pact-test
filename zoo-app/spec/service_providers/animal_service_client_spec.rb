require_relative 'pact_helper'
require 'animal_service_client'

describe AnimalServiceClient, :pact => true do

  before do
    AnimalServiceClient.base_uri 'localhost:1234'
  end

  subject { AnimalServiceClient.new }

  describe 'get panda' do
    before do
      animal_service.given("an panda exists").
          upon_receiving("a request for an panda").
          with(method: :get, path: '/panda', query: '').
          will_respond_with(
              status: 200,
              headers: {'Content-Type' => 'application/json'},
              body: {name: 'Hello'} )
    end

    it 'return a panda' do
      expect(subject.get_panda).to eq(Panda.new('Hello'))
    end
  end
end
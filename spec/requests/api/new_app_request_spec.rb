require 'spec_helper'

feature 'Receiving app requests', type: :request do

  describe 'Valid requests' do
    it 'should receive requests, save the request to the db, and return 200 OK' do
      post api_app_requests_path, :params => {:id => 3}.to_json, :headers => {}
      expect(response.status).to eq 200
    end    
  end

  describe 'Invalid requests' do
  end
end
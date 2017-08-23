require 'spec_helper'

feature 'Receiving app requests', type: :request do

  describe 'Valid requests' do
    it 'should receive requests, save the request to the db, and return 200 OK' do

      request_id = SecureRandom.hex(10)

      app_request_hash = {
        request_id:   request_id,
        request_time_in_milliseconds: 100,
        memory_in_mb: 200,
        objects:      300,
        classes:      400,
        modules:      500,
        floats:       600,
        strings:      700,
        regexps:      800,
        arrays:       900,
        hashes:      1000,
        structs:     1100,
        files:       1200
      }

      post api_app_requests_path, :params => app_request_hash.to_json, :headers => {}
      expect(response.status).to eq 200

      app_request = AppRequest.where(request_id: request_id).first
      expect(app_request.memory_in_mb).to eq 200
    end    
  end

  describe 'Invalid requests' do
  end
end
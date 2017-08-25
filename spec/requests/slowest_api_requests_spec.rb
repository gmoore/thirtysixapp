require 'spec_helper'

feature 'Slowest Api Requests', type: :request do
  describe 'Viewing slow requests' do  
    let(:api_key) { nil }

    before do
      ApiKey.create(:key_text => api_key)
      AppRequest.create(:api_key => api_key, 
                        :controller => "some/controller", 
                        :request_time_in_milliseconds => 200)
      AppRequest.create(:api_key => api_key, 
                        :controller => "some/controller", 
                        :request_time_in_milliseconds => 200)
    end

    it 'should show slow requests' do
      visit app_requests_path
      within ".box-header" do
        expect(page).to have_content "Slowest Requests"
      end

      within ".box-body" do
        expect(page).to have_content "some/controller"
      end
    end    
  end

  describe 'When there are now requests for this key' do
    it 'Should show a friendly message' do
      visit app_requests_path
      within ".box-header" do
        expect(page).to have_content "Slowest Requests"
      end

      within ".box-body" do
        expect(page).to have_content "This API Key has no requests associated with it"
      end
    end
  end
end
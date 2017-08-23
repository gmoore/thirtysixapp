require 'spec_helper'

RSpec.describe AppRequest do

  before do
    AppRequest.create(:api_key => "a", :request_time_in_milliseconds => 20)
    AppRequest.create(:api_key => "a", :request_time_in_milliseconds => 30)

    AppRequest.create(:api_key => "b", :request_time_in_milliseconds => 40)
  end

  it "should return the 20 slowest requests by api_key" do
    slowest_requests = AppRequest.slowest("a")
    expect(slowest_requests.size).to eq 2

    slowest_requests.each do |req|
      expect(req.api_key).to eq "a"
    end
  end
end


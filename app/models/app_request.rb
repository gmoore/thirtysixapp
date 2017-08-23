class AppRequest < ActiveRecord::Base

  def self.slowest(api_key, num=20)
    AppRequest.where(api_key: api_key).limit(num).order('request_time_in_milliseconds desc')
  end
end
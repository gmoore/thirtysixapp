class AppRequest < ActiveRecord::Base

  def self.slowest(api_key, num=20)
    AppRequest.where(api_key: api_key).limit(num).order('request_time_in_milliseconds desc')
  end

  def self.by_controller(api_key, controller, action)
    AppRequest.where(api_key: api_key)
              .where(controller: controller)
              .where(action: action)
              .order('created_at desc')
              .limit(10)
  end
end
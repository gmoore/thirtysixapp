class AppRequestsController < ApplicationController
  def index
    @slowest_requests = AppRequest.slowest
  end
end
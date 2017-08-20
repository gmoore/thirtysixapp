class AppRequestsController < ApplicationController
  def index
    @app_requests = AppRequest.all
  end
end
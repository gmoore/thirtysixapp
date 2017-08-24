class AppRequestsController < ApplicationController
  def index
    @slowest_requests = AppRequest.slowest(session[:api_key])
  end

  def show
    @app_request = AppRequest.find(params[:id])
  end
end
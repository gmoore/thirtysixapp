class AppControllersController < ApplicationController
  def index
    @app_requests = AppRequest.by_controller(session[:api_key], params[:app_controller], params[:app_action])
  end
end
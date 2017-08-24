class SessionsController < ApplicationController
  def create
    session[:api_key] = params[:api_key]
    redirect_to app_requests_path
  end
end
class Api::AppRequestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    json = JSON.parse(request.body.read)
    app_request = AppRequest.new
    app_request.request_id                    = json["request_id"]
    app_request.api_key                       = json["api_key"]
    app_request.request_time_in_milliseconds  = json["request_time_in_milliseconds"]
    app_request.controller                    = json["controller"]
    app_request.action                        = json["action"]
    app_request.query_parameters              = json["query_parameters"]
    app_request.memory_in_mb                  = json["memory_in_mb"]
    app_request.objects                       = json["objects"]
    app_request.classes                       = json["classes"]
    app_request.modules                       = json["modules"]
    app_request.floats                        = json["floats"]
    app_request.strings                       = json["strings"]
    app_request.regexps                       = json["regexps"]
    app_request.arrays                        = json["arrays"]
    app_request.hashes                        = json["hashes"]
    app_request.structs                       = json["structs"]
    app_request.files                         = json["files"]
    app_request.save
    
    head :ok
  end
end
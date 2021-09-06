class ResultController < ApplicationController

  def index
    @noOfResults = 20
    @query = params[:id]
    @result = request_api("https://v5.vbb.transport.rest/stops/#{@query}")
    @departures = request_api("https://v5.vbb.transport.rest/stops/#{@query}/departures")
  end
end

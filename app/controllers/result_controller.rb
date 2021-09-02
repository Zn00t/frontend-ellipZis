class ResultController < ApplicationController

  def index
    @results = 10
    @query = params[:id]
    @result = request_api("https://v5.vbb.transport.rest/stops/#{@query}")
  end


  private
  def request_api(url)
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end
end

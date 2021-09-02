class SearchController < ApplicationController

  def get
    @results = 10
    @query = params[:query]
    @result = request_api("https://v5.vbb.transport.rest/locations?query=#{@query}&results=#{@results}")
  end


  private
  def request_api(url)
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end
end

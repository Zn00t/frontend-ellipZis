class SearchController < ApplicationController

  def get
    @results = 10
    @query = params[:query]
    @result = request_api("https://v5.vbb.transport.rest/locations?query=#{@query}&results=#{@results}")
  end
end

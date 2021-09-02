class SearchController < ApplicationController

  def get
    @query = params[:query]

  end

  def request_api(url)
    response = Excon.get(url)
    return nil if response.status != 200
    JSON.parse(response.body)
  end

end

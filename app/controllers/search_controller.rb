class SearchController < ApplicationController

  def get
    @query = params[:query]
  end

end

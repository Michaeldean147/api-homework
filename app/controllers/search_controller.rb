class SearchController < ApplicationController
attr_reader :movies


  def index

  end

  def search
    response = RestClient.get "http://www.omdbapi.com/?s=#{URI.encode(params[:q])}"
    @movies = JSON.parse(response.body)
  end

end

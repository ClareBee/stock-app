class StocksController < ApplicationController
  def index
    iex = Iex.new("GOOGL")
    @results = iex.tops
    @news = iex.news
  end


end

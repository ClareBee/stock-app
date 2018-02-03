class StocksController < ApplicationController
  def index
    iex = Iex.new("GOOGL")
    @result = iex.info
    @news = iex.news
  end

  def charts
    iex = Iex.new("GOOGL")
    @charts = iex.charts
  end

end

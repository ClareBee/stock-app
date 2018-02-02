class StocksController < ApplicationController
  def index
    iex = Iex.new("GOOGL")
    @results = iex.tops
    @news = iex.news
  end

  def charts
    iex = Iex.new("GOOGL")
    @charts = iex.charts
  end

end

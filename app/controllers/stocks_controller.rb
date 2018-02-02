class StocksController < ApplicationController
  def index
    iex = Iex.new("GOOGL")
    @results = iex.tops
  end


end

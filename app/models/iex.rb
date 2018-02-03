# no need to require thanks to bundler

class Iex
  include HTTParty

  base_uri "https://api.iextrading.com/1.0"

  format :json

  def initialize(symbol)
    @options = {query: {symbols: symbol}}
  end

  def info
    self.class.get("https://api.iextrading.com/1.0/stock/googl/company").parsed_response
  end

  def news
    self.class.get("https://api.iextrading.com/1.0/stock/googl/news").parsed_response
  end

  def charts
    self.class.get("https://api.iextrading.com/1.0/stock/googl/chart/1m").parsed_response
  end

  def financials
    self.class.get("https://api.iextrading.com/1.0/stock/googl/financials").parsed_response
  end
end

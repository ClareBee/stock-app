# Use the class methods to get down to business quickly
# response = HTTParty.get('https://api.iextrading.com/1.0/stock/aapl/batch?types=quote,news,chart&range=1m&last=10')

# puts response.body, response.code, response.message, response.headers.inspect
# no need to require thanks to bundler

class Iex
  include HTTParty

  base_uri "https://api.iextrading.com"

  format :json

  def initialize(symbol)
    @options = {query: {symbols: symbol}}
  end

  def tops
    self.class.get("/1.0/tops", @options)
  end

  def news
    self.class.get("https://api.iextrading.com/1.0/stock/googl/news").parsed_response
  end
end
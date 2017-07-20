require 'sinatra'
require 'stock_quote'

#루트페이지 들어가면 뭘할지 쓰겠다.
get '/' do
  @content = 'Hack Tour Life'
  erb :index
end

post '/result' do
   @content = stock_price(params[:company])
   erb :index
end

def stock_price(company)
 stock = StockQuote::Stock.quote company
 "#{stock.name} is $#{stock.last_trade_price_only}"
end
require 'stock_quote'
require 'pry'

#아규먼트 백터, 뒤에오는거 다 가져오는거야 ARGC는 카운터, 이건 숫자말하는거야
input = ARGV

input.each do |c|
stock = StockQuote::Stock.quote(c)
puts "#{stock.name} is $#{stock.last_trade_price_only}"
end
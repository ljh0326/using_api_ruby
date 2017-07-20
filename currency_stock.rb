require 'pry'
require 'eu_central_bank'
require 'stock_quote'

from = 'USD'
to = 'KRW'

printf "어떤회사? : "
input = gets.chomp

stock = StockQuote::Stock.quote(input)

bank = EuCentralBank.new
bank.update_rates

result = bank.exchange 100, from ,to
result = stock.last_trade_price_only * result

puts "#{stock.name} is $#{result}"

#강사 코드

__END__

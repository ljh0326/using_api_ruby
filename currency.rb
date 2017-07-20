require 'pry'
require 'eu_central_bank'

from = 'USD'
to = 'KRW'

bank = EuCentralBank.new

bank.update_rates
result = bank.exchange 100, from ,to

puts "#{from} => #{to} : 1$ => #{result}￦"
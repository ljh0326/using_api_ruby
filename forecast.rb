require 'pry'
require 'forecast_io'

ForecastIO.configure do |c|
    c.api_key = 'd6f50ae3e25729d23664a386e6167f89'
end

#binding.pry

forecast = ForecastIO.forecast(48.85837009999999,2.2944813)

f = forecast.currently

puts f.summary
puts ((f.apparentTemperature - 32) * 5 / 9).round(1)
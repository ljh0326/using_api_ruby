require 'pry'
require 'forecast_io'
require 'geocoder' 

print "장소를 입력하세요 : "
input = gets.chomp
cord = Geocoder.coordinates(input)

ForecastIO.configure do |c|
    c.api_key = 'd6f50ae3e25729d23664a386e6167f89'
end

#binding.pry

forecast = ForecastIO.forecast(cord[0],cord[1])

f = forecast.currently

puts f.summary
puts ((f.apparentTemperature - 32) * 5 / 9).round(1)
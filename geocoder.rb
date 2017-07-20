#이제 지오코더 쓸 수 있음
require 'geocoder' 

#좌표

#cord = Geocoder.coordinates('멀티캠퍼스') 아래와 같다
print "장소를 입력하세요 : "
input = gets.chomp
cord = Geocoder.coordinates(input)
puts cord
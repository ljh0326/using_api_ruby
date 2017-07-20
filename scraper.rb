require 'pry'
require 'awesome_print'
require 'mechanize'

#뭐하는 요원이냐면 긁어주는 요원
agent = Mechanize.new

#아마존에서 허락받으려고
agent.user_agent = 'hun'

binding.pry

page = agent.get 'https://www.amazon.com'

require 'JSON'
require 'open-uri'

url = URI.open"https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json"

result = open(url).read
objs = JSON.parse(result) 

objs.each do |obj|
  sna = obj["sna"].gsub("YouBike2.0_", "")
  puts sna
end

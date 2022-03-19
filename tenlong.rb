require 'nokogiri'
require 'open-uri'


books = Nokogiri::HTML(URI.open('https://www.books.com.tw/web/sys_tdrntb/books/?loc=subject_005'))

books.css('.item > .type02_bd-a > h4 > a').each do |book|
  puts book.content
end

# CSS 選取器
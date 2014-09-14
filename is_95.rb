require 'open-uri'
require 'nokogiri'

url = 'http://www.tomakomai-ct.ac.jp/i/urgency/index.php'

html = open(url).read
doc = Nokogiri::HTML(html, url)

puts doc.text.include?("休校")


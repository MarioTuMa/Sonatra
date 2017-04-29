require "open-uri"
require 'nokogiri'
require 'mechanize'
require "json"
word=ARGV[0]
doc=Nokogiri::HTML(open("https://www.bradsdeals.com/search?query="+word))
#puts doc.class
#p doc.css(".col")
offers= doc.css("script")
jsonthingineed=""
offers.each do |offer|

  if offer.text[27..44]=="searchesController"
   jsonthingineed=offer.text
  end
end
p jsonthingineed[52...jsonthingineed.length-3]

File.open("offersfrombrad.json","wb") do |json|
  json << jsonthingineed[52...jsonthingineed.length-3]
end

#!/usr/bin/ruby

require 'open-uri'
require 'nokogiri'

doc = Nokogiri.HTML(open("https://www.amazon.co.jp"))

# ページに含まれるリンクを出力する
doc.css('a').each do |element|
  # puts element
  puts element[:href]
end

## h2のテキストを出力する
doc.xpath('//h2').each do |element|
  # puts element
  puts element.text
end

# -*- encoding: UTF-8 -*-
require 'nokogiri'
require 'open-uri'

url = 'http://dev.classmethod.jp/feed/'

xml = Nokogiri::XML(open(url).read)

item_nodes = xml.xpath('//item')

item_nodes.each do |item|
  puts "ブログタイトル：" + item.xpath('title').text
  puts "執筆者：" + item.xpath('dc:creator').text
  puts "説明：" + item.xpath('description').text
end

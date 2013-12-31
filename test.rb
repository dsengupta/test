require 'open-uri'
require 'nokogiri'

url = "http://www.ruby-lang.org"



def make_absolute( href, root )
  URI.parse(root).merge(URI.parse(href)).to_s
end

Nokogiri::HTML(open(url)).xpath("//img/@src").each do |src|
  uri = make_absolute(src,url)
  File.open(File.basename(uri),'wb'){ |f| f.write(open(uri).read) }
end

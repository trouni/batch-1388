require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

url = "https://www.bbcgoodfood.com/search/recipes?q=chocolate"

serialized_html = URI.open(url).read
html_doc = Nokogiri::HTML.parse(serialized_html)

search_results = html_doc.search("article.card a:first-child")

search_results.each do |result|
  puts result.text.strip
  puts result.attributes["href"].value
end

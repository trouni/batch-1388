require "open-uri"
require "nokogiri"

def get_top_5_movie_urls
  serialized_html = URI.open("https://www.imdb.com/chart/top/", "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
  html_doc = Nokogiri::HTML.parse(serialized_html)

  # Find the CSS selector to target the right elements
  # Select the first 5 elements
  # Select the data that we want from each element
  html_doc.search(".ipc-title-link-wrapper").first(5).map do |element|
    "https://www.imdb.com#{element.attribute("href").value}".split("?").first
  end
end

def fetch_movie(url)
  serialized_html = URI.open(url, "Accept-Language" => "en", "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
  html_doc = Nokogiri::HTML.parse(serialized_html)

  title = html_doc.search(".fDTGTb").text.strip
  year = html_doc.search(".sc-dffc6c81-0 .ipc-link").text.strip[...-1].to_i
  director = html_doc.search(".ipc-metadata-list-item__content-container").first.text.strip
  cast = html_doc.search(".sc-bfec09a1-1").first(3).map { |element| element.text.strip }
  storyline = html_doc.search(".sc-466bb6c-2.eVLpWt").text.strip

  {
    title: title,
    year: year,
    director: director,
    cast: cast,
    storyline: storyline
  }
end

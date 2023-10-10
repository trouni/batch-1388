require "yaml"
require_relative "scraper"

# Get the top 5 movie URLs
movie_urls = get_top_5_movie_urls

# Fetch each movie's details
movies = movie_urls.map { |url| fetch_movie(url) }

# Serialized into YAML
serialized_movies = YAML.dump(movies)

# Write data into file
File.open('movies.yaml', 'wb') do |file|
  file.write(serialized_movies)
end

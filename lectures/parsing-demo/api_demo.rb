require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
def get_github_info(username)
  url = "https://api.github.com/users/#{username}"

  serialized_data = URI.open(url).read
  data = JSON.parse(serialized_data)

  "#{data["name"]} is in #{data["location"]} and has #{data["public_repos"]} public repos"
end

print("What is the user's GitHub username? > ")
username = gets.chomp
puts get_github_info(username)

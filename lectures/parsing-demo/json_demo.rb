require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# PARSING

serialized_data = File.read(filepath)
data = JSON.parse(serialized_data)

data["beatles"].each do |beatle|
  puts "#{beatle["first_name"]} #{beatle["last_name"]} played the #{beatle["instrument"]}"
end

# STORING

beatles = {
  beatles: [
    {
      first_name: "John",
      last_name: "Lennon",
      instrument: "Guitar"
    },
    {
      first_name: "Paul",
      last_name: "McCartney",
      instrument: "Bass Guitar"
    }
  ]
}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end

require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# PARSING

CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row["First Name"]} #{row["Last Name"]} played #{row["Instrument"]}"
end

# STORING

students = [
  {
    first_name: "Kimi",
    last_name: "Ando",
    instrument: "Piano"
  },
  {
    first_name: "Chris",
    last_name: "Bourgeonnier",
    instrument: "Drums"
  }
]

CSV.open(filepath, "wb") do |csv|
  csv << ["first_name", "last_name", "instrument"]
  students.each do |student|
    csv << [student[:first_name], student[:last_name], student[:instrument]]
  end
end

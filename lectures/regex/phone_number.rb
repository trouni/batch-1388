# match?

def valid_phone_number?(phone_number)
  if phone_number.match?(/^\+44\s\d{2}\s\d{4}\s\d{4}\$/)
    puts "#{phone_number} is a valid UK international phone number"
  else
    puts "#{phone_number} is not valid!"
  end
end

valid_phone_number?("+44 12 1234 1234") # valid
valid_phone_number?("+44 12 1234 12348") # invalid
valid_phone_number?("+43 12 1234 1234") # invalid

# gsub

message = "Hey! This is my phone number, let's skip the AirBnb fees: +44 12 1234 1234"
message.gsub(/\+44\s\d{2}\s\d{4}\s\d{4}\b/, "<masked>")
# => Hey! This is my phone number, let's skip the AirBnb fees: <masked>

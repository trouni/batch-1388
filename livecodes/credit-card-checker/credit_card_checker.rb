CREDIT_CARD_PATTERN = /\A(\d{4} ?){4}\z/

def credit_card_checker(credit_card_number)
  if CREDIT_CARD_PATTERN.match?(credit_card_number)
    # These also work:
    # if credit_card_number.match(CREDIT_CARD_PATTERN)
    # if credit_card_number =~ CREDIT_CARD_PATTERN
    # if credit_card_number.match?(CREDIT_CARD_PATTERN)
    "Valid credit card number"
  else
    "Invalid credit card number"
  end
end

def enhanced_credit_card_checker(credit_card_number)
  return "Invalid credit card number" unless CREDIT_CARD_PATTERN.match?(credit_card_number)

  case credit_card_number[0].to_i
  when 4 then "Valid VISA credit card number"
  when 5 then "Valid Mastercard credit card number"
  else "Valid credit card number"
  end
end

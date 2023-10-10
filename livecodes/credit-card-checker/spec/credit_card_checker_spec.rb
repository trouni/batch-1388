require_relative "../credit_card_checker"

describe "#credit_card_checker" do
  it "returns 'Invalid credit card number' when passed an empty string" do
    actual = credit_card_checker("")
    expect(actual).to eq("Invalid credit card number")
  end

  it "returns 'Invalid credit card number' if there are any non-digit characters" do
    actual = credit_card_checker("4242 4A42 4242 4242")
    expect(actual).to eq("Invalid credit card number")
  end

  it "returns 'Invalid credit card number' if there are more than 16 digits" do
    actual = credit_card_checker("4242 4242 4242 4242 4")
    expect(actual).to eq("Invalid credit card number")
  end

  it "returns 'Invalid credit card number' if there are less than 16 digits" do
    actual = credit_card_checker("4242 4242 4242 424")
    expect(actual).to eq("Invalid credit card number")
  end

  it "returns 'Valid credit card number' for a valid 16 digits number" do
    actual = credit_card_checker("4242424242424242")
    expect(actual).to eq("Valid credit card number")
  end

  it "returns 'Valid credit card number' with spaces between numbers" do
    actual = credit_card_checker("4242 4242 4242 4242")
    expect(actual).to eq("Valid credit card number")
  end
end

describe "#enhanced_credit_card_checker" do
  it "returns 'Valid VISA credit card number' if the card starts with a 4" do
    actual = enhanced_credit_card_checker("4242 4242 4242 4242")
    expect(actual).to eq("Valid VISA credit card number")
  end

  it "returns 'Valid Mastercard credit card number' if the card starts with a 5" do
    actual = enhanced_credit_card_checker("5353 5353 5353 5353")
    expect(actual).to eq("Valid Mastercard credit card number")
  end

  it "returns 'Valid credit card number' if the card starts with another number" do
    actual = enhanced_credit_card_checker("6353 5353 5353 5353")
    expect(actual).to eq("Valid credit card number")
  end

  it "returns 'Invalid credit card number' if the card number is not valid" do
    actual = enhanced_credit_card_checker("5353 5353 5353 535")
    expect(actual).to eq("Invalid credit card number")
  end
end

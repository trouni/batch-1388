require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "returns true if the citizen is older than 18 years old" do
      citizen = Citizen.new("Rina", "Iwamine", 19)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if the citizen is younger than 18 years old" do
      citizen = Citizen.new("Rina", "Iwamine", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns the full name capitalized" do
      citizen = Citizen.new("rina", "iwamine", 19)
      expect(citizen.full_name).to eq("Rina Iwamine")
    end
  end
end

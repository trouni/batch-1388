require_relative "../animal"

describe Animal do
  describe ".new" do
    it "returns an instance of Animal" do
      zebbie = Animal.new("Zebbie")
      # expect(animal.class).to eq(Animal)
      expect(zebbie).to be_an(Animal)
    end
  end

  describe ".phyla" do
    it "returns an array with all the phyla names" do
      phyla = %w[
        Porifera
        Coelenterata
        Platyhelminthes
        Nematoda
        Annelida
        Arthropoda
        Mollusca
        Echinodermata
        Protochordata
        Vertebrata
      ]
      expect(Animal.phyla).to eq(phyla)
    end
  end

  describe "#name" do
    it "returns the name of the animal" do
      zebbie = Animal.new("Zebbie")
      expect(zebbie.name).to eq("Zebbie")
    end
  end

  describe "#eat(food)" do
    it 'returns "Zebbie eats a scorpion"' do
      zebbie = Animal.new("Zebbie")
      expect(zebbie.eat("a scorpion")).to eq("Zebbie eats a scorpion")
    end
  end
end

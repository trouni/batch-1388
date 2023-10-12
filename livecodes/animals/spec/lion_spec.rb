require_relative "../lion"

describe Lion do
  describe "#talk" do
    it 'returns "Zebbie roars"' do
      zebbie = Lion.new("Zebbie")
      expect(zebbie.talk).to eq("Zebbie roars")
    end
  end

  describe "#eat(food)" do
    it 'returns "Zebbie eats a gazelle. Law of the Jungle!"' do
      zebbie = Lion.new("Zebbie")
      expect(zebbie.eat("a gazelle")).to eq("Zebbie eats a gazelle. Law of the Jungle!")
    end
  end
end

require_relative "../meerkat"

describe Meerkat do
  describe "#talk" do
    it 'returns "Sayuki barks"' do
      sayuki = Meerkat.new("Sayuki")
      expect(sayuki.talk).to eq("Sayuki barks")
    end
  end
end

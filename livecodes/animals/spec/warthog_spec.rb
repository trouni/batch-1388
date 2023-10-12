require_relative "../warthog"

describe Warthog do
  describe "#talk" do
    it 'returns "Naya grunts"' do
      naya = Warthog.new("Naya")
      expect(naya.talk).to eq("Naya grunts")
    end
  end
end

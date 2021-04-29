require_relative '../meerkat'

RSpec.describe Meerkat do
  describe '#talk' do
    it 'should talk like a real meerkat' do
      meerkat1 = Meerkat.new("Timon")
      expect(meerkat1.talk).to eq("Timon barks")
    end
  end
end

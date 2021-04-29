require_relative '../warthog'

RSpec.describe Warthog do
  describe '#talk' do
    it 'should talk like a real warthog' do
      warthog1 = Warthog.new("Pumba")
      expect(warthog1.talk).to eq("Pumba sings")
    end
  end
end

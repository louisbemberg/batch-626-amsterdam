# describe WHO/WHAT we want to test
  # it 'give details about what the test is about'
    # expect => check if the test passes or not
require_relative '../lion'

RSpec.describe Lion do
  describe '#talk' do
    it 'should talk like a real lion' do
      lion1 = Lion.new("Simba")
      expect(lion1.talk).to eq("Simba roars")
    end
  end
end

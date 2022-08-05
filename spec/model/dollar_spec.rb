require_relative '../../model/dollar'

RSpec.describe Dollar, type: :model do

  let(:five) { described_class.dollar(5) }
  describe '#times' do
    it 'should return 10' do
      expect(Dollar.new(10).amount).to eq five.times(2).amount
    end

    it 'should return 15' do
      expect(Dollar.new(15).amount).to eq five.times(3).amount
    end
  end

  describe '#equals' do
    it 'return true if value is equal' do
      expect(five.equals(Dollar.new(5))).to eq true
    end

    it 'return false if value is not equal' do
      expect(five.equals(Dollar.new(6))).to eq false
    end
  end

  describe "#currency" do
    it "return USD" do
      expect(five.currency).to eq "USD"
    end
  end
end

require_relative '../../model/franc'

RSpec.describe Franc, type: :model do
  let(:five) { Money.franc(5, "CHF") }

  describe '#times' do
    it 'should return 10' do
      expect(Franc.new(10).amount).to eq five.times(2).amount
    end

    it 'should return 15' do
      expect(Franc.new(15).amount).to eq five.times(3).amount
    end
  end

  describe '#equals' do
    it 'return true if value is equal' do
      expect(five.equals(Franc.new(5))).to eq true
    end

    it 'return false if value is not equal' do
      expect(five.equals(Franc.new(6))).to eq false
    end
  end

  describe "#currency" do
    it 'return CHF' do
      expect(five.currency).to eq "CHF"
    end
  end
end

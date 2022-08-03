require_relative '../../model/franc'

RSpec.describe Franc, type: :model do
  subject { described_class.new(5) }
  describe '#times' do
    it 'should return 10' do
      expect(Franc.new(10).amount).to eq subject.times(2).amount
    end

    it 'should return 15' do
      expect(Franc.new(15).amount).to eq subject.times(3).amount
    end
  end

  describe "#equals" do
    it 'return true if value is equal' do
      expect(subject.equals(Franc.new(5))).to eq true
    end

    it 'return false if value is not equal' do
      expect(subject.equals(Franc.new(6))).to eq false
    end
  end
end
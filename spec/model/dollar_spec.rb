require_relative '../../model/dollar'

RSpec.describe Dollar, type: :model do
  subject { described_class.new(5) }
  describe '#times' do
    it 'should return 10' do
      expect(Dollar.new(10).amount).to eq subject.times(2).amount
    end

    it 'should return 15' do
      expect(Dollar.new(15).amount).to eq subject.times(3).amount
    end
  end

  describe '#equals' do
    it 'return true if value is equal' do
      expect(subject.equals(Dollar.new(5))).to eq true
    end

    it 'return false if value is not equal' do
      expect(subject.equals(Dollar.new(6))).to eq false
    end
  end
end

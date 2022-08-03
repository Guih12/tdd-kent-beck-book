require_relative '../../model/dollar'

RSpec.describe Dollar, type: :model do
  subject { described_class.new(5) }
  describe '#times' do
    it 'should return 10' do
      expect(subject.times(2)).to eq 10
    end
  end
end

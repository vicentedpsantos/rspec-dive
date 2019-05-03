RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matacher' do
    it 'tests for value including same type' do
      expect(a).not_to eql(3)
      expect(a).to eq(3.0)
      expect(a).not_to eql(b)
    end
  end
end

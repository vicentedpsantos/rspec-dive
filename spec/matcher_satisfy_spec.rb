RSpec.describe 'satisfy matcher' do
  it 'is not a palindrome' do
    subject { 'racecars' }
    expect(subject).not_to satisfy { |value| value == value.reverse }
  end

  it 'is a palindrome' do
    subject { 'hukuh' }
    expect(subject).not_to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end

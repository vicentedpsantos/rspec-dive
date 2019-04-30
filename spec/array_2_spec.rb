RSpec.describe Array do
  subject(:sally) do
    [3, 2]
  end

  it 'has the size of two' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'remains the original array' do
    expect(sally.length).to eq(2)
  end
end

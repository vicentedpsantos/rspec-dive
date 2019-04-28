RSpec.describe Hash do
  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Vicente'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end

RSpec.describe Array do
  it 'should be started blank' do
    expect(subject.length).to eq(0)
    subject.push('Vicente')
    expect(subject.length).to eq(1)
  end
end

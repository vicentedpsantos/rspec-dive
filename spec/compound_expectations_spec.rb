RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a singe line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end
end

RSpec.describe [:brazil, :uruguay, :chile] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:brazil).or eq(:uruguay).or eq(:chile)
  end
end

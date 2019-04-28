RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'before context'
  end

  after(:context) do
    puts 'after context'
  end

  before do
    puts 'before example'
  end

  after do
    puts 'after example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just a random example' do
    expect(3 * 4).to eq(12)
  end
end

class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Vicente') }
  let(:augusto) { described_class.new('Augusto') }

  it 'represents a great person' do
    expect(subject.name).to eq('Vicente')
    expect(augusto.name).to eq('Augusto')
  end
end

class Card
  attr_accessor :rank, :suite

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end

  def type
    "#{rank} of #{suite}"
  end
end

# Rank = Two, Suite = Spades
RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suite' do
    expect(card.suite).to eq('Spades')
  end

  it 'has a type' do
    expect(card.type).to eq('Ace of Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suite).to eq(comparison), "Expected #{comparison}, but got #{card.suite} instead"
  end
end

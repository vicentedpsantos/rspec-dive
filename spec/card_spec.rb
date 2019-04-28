class Card
  attr_reader :rank, :suite

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
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suite' do
    card = Card.new('Ace', 'Spades')
    expect(card.suite).to eq('Spades')
  end

  it 'has a type' do
    card = Card.new('Ace', 'Spades')
    expect(card.type).to eq('Ace of Spades')
  end
end
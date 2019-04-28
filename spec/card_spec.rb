class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

# Rank = Two, Suite = Spades
RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Two')
  end

  it 'has a suite' do
    card = Card.new('Ace', 'Spades')
  end
end

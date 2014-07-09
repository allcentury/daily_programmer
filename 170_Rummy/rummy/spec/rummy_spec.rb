require 'rspec'
require_relative '../lib/rummy'


describe Card do
  let(:card) { Card.new('A', 'Spades') }
  it 'has a value and a type' do
    expect(card.value).to eq('A')
    expect(card.suit).to eq('Spades')
  end
  it 'has a rank associated with each card' do
    expect(card.rank).to eq(14)
  end
  it 'has an implied rank when not a face card' do
    card1 = Card.new('10', 'Hearts')
    card2 = Card.new('7', 'Diamonds')
    expect(card1.rank).to eq(10)
    expect(card2.rank).to eq(7)
  end
end

describe Deck do
  it 'deals 52 unique cards' do
    deck = Deck.new
    deck.new_game
    expect(deck.new_game.count).to eq(52)
    expect(deck.new_game.uniq.count).to eq(52)
  end
end

describe Hand do
end

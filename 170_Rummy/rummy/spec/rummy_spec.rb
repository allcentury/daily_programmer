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
  it 'validates a straight of 4 cards' do
    cards = []
    cards.push(Card.new('10', 'Spades'),
               Card.new('Q', 'Spades'),
               Card.new('J', 'Spades'),
               Card.new('Q', 'Diamonds'),
               Card.new('9', 'Spades'),
               Card.new('10', 'Diamonds'),
               Card.new('9', 'Hearts')
              )
    hand = Hand.new(cards)
    expect(hand.straight?).to be(true)
  end
  it 'validates a straight of 3 cards' do
    cards = []
    cards.push(Card.new('10', 'Spades'),
               Card.new('Q', 'Spades'),
               Card.new('J', 'Spades'),
               Card.new('Q', 'Diamonds'),
               Card.new('4', 'Spades'),
               Card.new('10', 'Diamonds'),
               Card.new('9', 'Hearts')
              )
    hand = Hand.new(cards)
    expect(hand.straight?).to be(true)
  end

  it 'validates 4 of a kind' do
    cards = []
    cards.push(Card.new('10', 'Spades'),
               Card.new('10', 'Hearts'),
               Card.new('10', 'Clubs'),
               Card.new('Q', 'Diamonds'),
               Card.new('4', 'Spades'),
               Card.new('10', 'Diamonds'),
               Card.new('9', 'Hearts')
              )
    hand = Hand.new(cards)
    expect(hand.four_of_a_kind?).to be(true)   
  end
  it 'validates 3 of a kind' do 
    cards = []
    cards.push(Card.new('10', 'Spades'),
               Card.new('10', 'Hearts'),
               Card.new('10', 'Clubs'),
               Card.new('Q', 'Diamonds'),
               Card.new('4', 'Spades'),
               Card.new('9', 'Diamonds'),
               Card.new('9', 'Hearts')
              )
    hand = Hand.new(cards)
    expect(hand.three_of_a_kind?).to be(true)
  end
  it 'validats a meld or a winning hand' do
    cards = []
    cards.push(Card.new('10', 'Spades'),
               Card.new('10', 'Hearts'),
               Card.new('10', 'Clubs'),
               Card.new('Q', 'Diamonds'),
               Card.new('J', 'Diamonds'),
               Card.new('K', 'Diamonds'),
               Card.new('A', 'Diamonds')
              )
    hand = Hand.new(cards)
    expect(hand.meld?).to be(true)
  end
end

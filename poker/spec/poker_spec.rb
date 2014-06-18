require 'rspec'
require_relative '../lib/poker'


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
  it 'validates a royal flush' do 
    suit = 'spades'
    cards = []
    vals = ['A', 'K', 'Q', 'J', '10']
   vals.each do |val|
     cards << Card.new(val, suit)
   end
   hand = Hand.new(cards)
   expect(hand.royal_flush?).to be(true)
  end
  it 'validates a straight flush' do
    suit = 'spades'
    cards = []
    vals = ['4', '5', '6', '7', '8']
    vals.each do |val|
      cards << Card.new(val, suit)
    end
    hand = Hand.new(cards)
    expect(hand.straight_flush?).to be(true)
  end
  it 'validats a straight flush with face cards' do 
    suit = 'spades'
    cards = []
    vals = ['8', '9', '10', 'J', 'Q']
    vals.each do |val|
      cards << Card.new(val, suit)
    end
    hand = Hand.new(cards)
    expect(hand.straight_flush?).to be(true)
  end
  it 'validates a four of a kind' do
    cards = []
    cards.push(Card.new('Q', 'Spades'), Card.new('Q', 'Hearts'), Card.new('Q', 'Clubs'), Card.new('Q', 'Diamonds'), Card.new('5', 'Spades'))
    hand = Hand.new(cards)
    expect(hand.four_of_a_kind?).to be(true)
  end
  it 'validates a full house' do
    cards = []
    cards.push(Card.new('K', 'Spades'), Card.new('K', 'Hearts'), Card.new('3', 'Spades'), Card.new('3', 'Hearts'), Card.new('3', 'Diamonds'))
    hand = Hand.new(cards)
    expect(hand.full_house?).to be(true)
  end
  it 'validates a three of a kind' do
    cards = []
    cards.push(Card.new('8', 'Spades'), Card.new('8', 'Hearts'), Card.new('8', 'Diamonds'), Card.new('J', 'Spades'), Card.new('5', 'Diamonds'))
    hand = Hand.new(cards)
    expect(hand.three_of_a_kind?).to be(true)
  end
  it 'validates a two pair' do
    cards = []
    cards.push(Card.new('Q', 'Spades'), Card.new('Q', 'Hearts'), Card.new('7', 'Diamonds'), Card.new('7', 'Hearts'), Card.new('5', 'Diamonds'))
    hand = Hand.new(cards)
    expect(hand.two_pair?).to be(true)
  end
  it 'validates a pair' do
    cards = []
    cards.push(Card.new('8', 'Spades'), Card.new('8', 'Hearts'), Card.new('5', 'Hearts'), Card.new('4', 'Clubs'), Card.new('7', 'Hearts'))
    hand = Hand.new(cards)
    expect(hand.pair?).to be(true)
  end
  it 'validtes a flush' do
    cards = []
    suit = 'Diamonds'
    vals = ['A', 'Q', '6', 'J', '2']
    vals.each do |val|
      cards << Card.new(val, suit)
    end
    hand = Hand.new(cards)
    expect(hand.flush?).to be(true)
  end
  it 'validates a straight' do
    cards = []
    cards.push(Card.new('9', 'Spades'), Card.new('10', 'Hearts'), Card.new('J', 'Hearts'), Card.new('Q', 'Diamonds'), Card.new('K', 'Spades'))
    hand = Hand.new(cards)
    expect(hand.straight?).to be(true)
  end
  it 'validates a high card' do
    cards = []
    suit = 'Diamonds'
    vals = ['2', '5', '8', '9', '10']
    vals.each do |val|
      cards << Card.new(val, suit)
    end
    hand = Hand.new(cards)
    expect(hand.high_card).to eq(10)
  end
  it 'validates a hig face card' do
    cards = []
     suit = 'Diamonds'
    vals = ['2', '5', '8', '9', 'A']
    vals.each do |val|
      cards << Card.new(val, suit)
    end
    hand = Hand.new(cards)
    expect(hand.high_card).to eq('A')
  
  end
end

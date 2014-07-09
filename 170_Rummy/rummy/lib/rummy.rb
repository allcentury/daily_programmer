require 'pry'
class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def rank
    ranks = {'J' => 11, 'Q' => 12, 'K'=> 13, 'A'=>14}
    if ranks.include?(self.value)
      return ranks[self.value]
    else
      return self.value.to_i
    end
  end
  
end

class Deck

  def new_game
    deck = []
    suits = ['spades', 'hearts', 'clubs', 'diamonds']
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    suits.each do |suit|
      values.each do |value|
        deck << Card.new(value, suit)
      end
    end
    deck
  end

end

class Hand
  attr_reader :cards
  
  def initialize(cards)
    @cards = cards
  end
  
  private

  def suits
    results = Hash.new 0
    @cards.each do |card|
      results[card.suit] += 1
    end
    results
  end
  
  def values
    results = Hash.new 0
    @cards.each do |card|
      results[card.rank.to_s] += 1
    end
    results
  end

  def to_face(card)
    ranks = {'14'=>'A', '13'=>'K', '12'=>'Q', '11'=>'J'}
    ranks[card.to_s]
  end
end

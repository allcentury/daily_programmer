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
  attr_reader :deck
  def initialize
    @deck ||= []
  end

  def new_game
    @deck = []
    suits = ['spades', 'hearts', 'clubs', 'diamonds']
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    suits.each do |suit|
      values.each { |value| @deck << Card.new(value, suit) }
    end
    @deck
  end

  def deal_hand(card_count)
    hand = []
    (1..card_count).each do |i|
      rand = rand(0..@deck.length)
      hand << @deck[rand]
      @deck.delete_at(rand)
    end
    hand
  end

end

class Hand
  attr_reader :cards
  
  def initialize(cards)
    @cards = cards
  end

  def straight?
    hand_suits = suits
    valid_suit = hand_suits.select { |k,v| v >= 3 }
    return false if valid_suit.empty?
    sub_cards = []
    @cards.each do |card|
      sub_cards << card if valid_suit.has_key?(card.suit)
    end
    sorted_sub_cards = sort(sub_cards)
    prev_card = sorted_sub_cards[0] 
    correct = sorted_sub_cards.length 
    (1..sorted_sub_cards.length-1).each do |i|
      correct -= 1 if sorted_sub_cards[i].rank.to_i - prev_card.rank.to_i != 1
      prev_card = sorted_sub_cards[i]
    end
    correct < 3 ? false : true
  end

  def four_of_a_kind?
    vals = values
    vals.values.include?(4) ? true : false
  end

  def three_of_a_kind?
    vals = values
    vals.values.include?(3) ? true : false
  end

  def meld?
    straight? && (four_of_a_kind? || three_of_a_kind?) ? true : false
  end
  
  private

  def suits
    results = Hash.new 0
    @cards.each { |card| results[card.suit] += 1 }
    results
  end
  
  def values
    results = Hash.new 0
    @cards.each { |card|  results[card.rank.to_s] += 1 }
    results
  end

  def to_face(card)
    ranks = {'14'=>'A', '13'=>'K', '12'=>'Q', '11'=>'J'}
    ranks[card.to_s]
  end

  def sort(cards)
    (0..cards.length).each do |i|
      (i+1..cards.length-1).each do |j|
        if cards[j].rank.to_i < cards[i].rank.to_i
          temp = cards[i]
          cards[i] = cards[j]
          cards[j] = temp
        end
      end
    end
   cards 
  end

end

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
  
  def royal_flush?
    suits = [] 
    vals = []
    rf = ['A', 'K', 'Q', 'J', '10']
    @cards.each { |card| suits << card.suit }
    @cards.each { |card| vals << card.value }
    perms = vals.permutation.to_a
    if perms.include?(rf) && suits.uniq.count == 1
      return true
    end
    false
  end
  
  def straight_flush?
    current_suits = suits
    current_vals = values.keys
    current_vals.map {|val| val.to_i}.sort!
    prev_val = current_vals.first.to_i
    (1..4).each do |ctr|
      if current_vals[ctr].to_i - prev_val.to_i != 1 
        return false
      end
      prev_val = current_vals[ctr]
    end
    true
  end

  def four_of_a_kind?
    current_vals = values
    current_vals.each do |k, v|
      return true if v == 4
    end
    false
  end

  def full_house?
    if three_of_a_kind? && pair?
      return true
    end
    false
  end

  def three_of_a_kind?
    current_vals = values
    current_vals.each do |k, v|
      return true if v == 3
    end
    false
  end

  def pair?
    current_vals = values
    current_vals.each do |k, v|
      return true if v == 2
    end
    false
  end

  def two_pair?
    current_vals = values
    results = 0
    current_vals.each do |k, v|
      results += 1 if v == 2
    end
    results == 2 ? true : false
  end

  def flush?
    return true if suits.keys.uniq.count == 1
    false
  end

  def straight?
    current_vals = values.to_a
    binding.pry
    prev_val = current_vals.first[0].to_i
    (1..current_vals.length-1).each do |ctr|
      if current_vals[ctr][0].to_i - prev_val != 1 
        return false
      end
      prev_val = current_vals[ctr][0].to_i
    end
    true
  end

  def high_card
    val = values.keys.sort_by { |k, v| v }.last.to_i
    if val > 10
      return to_face(val)
    end
    val
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

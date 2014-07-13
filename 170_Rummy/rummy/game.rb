require_relative 'lib/rummy'
require 'pry'
def print_hand(hand)
  hand.cards.each do |card|
    puts "#{card.value} of #{card.suit}"
  end
end

puts "Welcome to Rummy\n Let's play!"

deck = Deck.new
deck.new_game
cards = deck.deal_hand(7)
hand = Hand.new(cards)
puts "Your hand currently has"
print_hand(hand)

ctr = 1
win = false
while !win && ctr <= deck.deck.size 
  new_card = deck.draw
  hand << new_card
  if hand.meld? 
    win = true
  else
    card = hand.pop
    deck << card
    ctr += 1
  end
end

if win
  puts "Your hand won!"
  print_hand(hand)
else
  puts "You did not make a meld"
end

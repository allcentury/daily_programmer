require_relative 'lib/poker'

results = Hash.new 0
100000.times do
  deck = Deck.new
  cards = deck.new_game
  hand = Hand.new(cards.sample(5))
  if hand.royal_flush?
    results['royal_flush'] += 1
  elsif hand.straight_flush?
    results['straight_flush'] += 1
  elsif hand.four_of_a_kind?
    results['four_of_a_kind'] += 1
  elsif hand.full_house?
    results['full_house'] += 1
  elsif hand.flush?
    results['flush'] += 1
  elsif hand.straight?
    results['straight'] += 1
  elsif hand.three_of_a_kind?
    results['three of a kind'] += 1
  elsif hand.two_pair?
    results['two pair'] += 1
  elsif hand.pair?
    results['pair'] += 1
  end
end

results.each do |k, v|
  puts "#{k}\t #{v.to_f / 100000 * 100}%"
  puts "----------------------"
end

require_relative '../lib/blackjack'

describe BlackJack do
  it 'creates 52 cards' do
    hand = BlackJack.new
    hand.deal
    expect(hand.deal.count).to eq(52)
  end
end

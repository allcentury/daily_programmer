class BlackJack
  def deal
    suits = ['Spades', 'Hearts', 'Diamonds', 'Clubs']
    card_types = ['Ace', 'Two', 'Three', 'Four',
                 'Five', 'Six', 'Seven', 'Eight',
                 'Nine', 'Ten', 'Jack', 'Queen',
                 'King'
                ]
    deck = []
    suits.each do |suit|
      card_types.each do |card|
        deck << "#{card} of #{suit}"
      end
    end
    deck
  end

  def card_count

  end

end

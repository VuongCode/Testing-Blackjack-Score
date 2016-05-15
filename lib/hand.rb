require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
    @score = 0
    @aces = 0
  end

  def calculate_hand
    # Your code here after writing tests
    # Think about what this method needs to do
    @cards.each do |hand|
      if ['J','Q','K'].include?(hand[0])
        @score += 10
      elsif hand[0] == 'A'
        @aces += 1
      else
        @score += hand.to_i
      end
    end

    while @aces > 0
      if @score + 11 <= 21
        @score += 11
      else
        @score += 1
      end
      @aces -= 1
    end

    @score
  end
end

deck = Deck.new
cards = deck.deal(3)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
score = hand.calculate_hand

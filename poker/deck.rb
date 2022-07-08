require_relative "card.rb"

class Deck

    def initialize
        deck = []
        ranks = ['A', 'K', 'Q', 'J', '10', '9', '8', '7', '6', '5', '4', '3', '2']
        suits = ['D', 'H', 'C', 'S']
        suits.each do |suit|
            ranks.each do |rank|
                deck << [rank, suit]
            end
        end
        deck.push(['Joker', '1'], ['Joker', '2'])
        @deck = deck.shuffle
    end


end

p Deck.new
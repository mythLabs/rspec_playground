
class Card
    attr_accessor :rank
    attr_accessor :suit

    def initialize rank, suit
        self.rank = rank
        self.suit = suit
    end
end

RSpec.describe 'Card' do #creates an example group

    #what it should do #termed as an example
    it 'has a rankpe' do
        card = Card.new('Ace', 'Spades')

        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do
        card = Card.new('Ace', 'Spades')

        expect(card.suit).to eq('Spades')
    end
end
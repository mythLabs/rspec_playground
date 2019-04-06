
class Card
    attr_accessor :rank
    attr_accessor :suit

    def initialize rank, suit
        self.rank = rank
        self.suit = suit
    end
end

RSpec.describe Card do #creates an example group
    before do
        def card
            Card.new('Ace', 'Spades')
        end
        
    end

    #what it should do #termed as an example
    it 'has a ranki' do
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end
end
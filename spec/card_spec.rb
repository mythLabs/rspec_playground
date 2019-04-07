
class Card
    attr_accessor :rank
    attr_accessor :suit

    def initialize rank, suit
        self.rank = rank
        self.suit = suit
    end
end

RSpec.describe Card do #creates an example group
    # before do
    #     def card
    #         Card.new('Ace', 'Spades')
    #     end
    # end

    let(:card) { Card.new('Ace','Spades')}

    #what it should do #termed as an example
    it 'has a rank and that rank can change' do
        expect(card.rank).to eq('Ace')
        card.rank = 'a'
        expect(card.rank).to eq('a')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end

    it 'has custom error message' do
        comparison = 'Spades'
        expect(card.suit).to eq(comparison), "I expected #{comparison} but got #{card.suit}, you dumbass"
    end

end
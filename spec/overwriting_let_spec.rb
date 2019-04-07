class ProgrammingLanguage
    attr_accessor :name

    def initialize name = 'Ruby'
        self.name = name
    end
end

RSpec.describe ProgrammingLanguage do

    let(:language) { ProgrammingLanguage.new 'javascript'}

    it 'is should have the name' do
        expect(language.name).to eq('javascript')
    end

    context 'with no argument' do
        let(:language) { ProgrammingLanguage.new }

        it 'is should have the name as ruby' do
            expect(language.name).to eq('Ruby')
        end
    
    end

    

end
RSpec.describe "Nested hooks" do
    before(:context) do
        puts 'Outer before context'
    end

    before(:example) do 
        puts 'Outer before example'
    end


    it 'does some basic math' do
        expect(4 * 2).to eq(8)
    end

    context 'With a condition A' do
        before(:context) do
            puts 'Inner before context'
        end
    
        before(:example) do 
            puts 'Inner before example'
        end

        it 'is just another random calculation' do
            expect(4 / 2).to eq(2)
        end

        it 'is just another more random calculation' do
            expect(4 / 1).to eq(4)
        end
    end

end
RSpec.describe "befome & after hooks" do
    before(:context) do #run once in context block,in this case 1
        puts 'before context'
    end

    after(:context) do
        puts 'after context'
    end

    before(:example) do 
        puts 'before example'
    end

    after(:example) do
        puts 'after example'
    end

    it 'is just a random example' do
        expect(4 * 2).to eq(8)
    end

    it 'is just another random example' do
        expect(4 / 2).to eq(2)
    end

end
RSpec.describe "#even? method" do
#    it 'should return true if number is even' do  #use nested describe if conditionals come in.
#    end

#    it 'should return false if number is odd' do
#    end


    describe 'with even number' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end
#context as alias to describe #nested describe
    context 'with odd number' do
        it 'should return false' do
            expect(7.even?).to eq(false)
        end
    end

end
require 'rspec' 
require_relative '../dog.rb';

RSpec.describe Dog do
    subject {Dog.new}

    describe '#bark' do
      it 'returns the "Woof!"' do
        expect(subject.bark).to eql('Woof!')
      end
    end

    describe '#feed' do
        context 'when the dog is hungry' do
            subject {described_class.new(hunger_level: 8)}
            it 'is no longer hungry?' do
                subject.feed
                expect(subject).to_not be_hungry
            end
        end
    end

    describe '#hungry?' do
        context 'when hunger level more than 5' do
            subject {described_class.new(hunger_level: 6)}
            it 'returns true ' do
                expect(subject).to be_hungry
            end
        end

        context 'when hunger level less than or equal to 4' do
            subject {described_class.new(hunger_level: 3)}
            it 'returns false' do
                expect(subject).to_not be_hungry
            end
        end
     end
end
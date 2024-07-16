require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
    let(:calculator) { StringCalculator.new }

    describe "#add" do 
        it 'should return 0 when empty string provided' do
            expect(calculator.add("")).to eq(0)
        end

        it 'should return sum of numbers provided in string' do 
            expect(calculator.add("2,1")).to eq(3)
        end

        it ' should return error if negetive number is given' do 
            expect(calculator.add("2,-1")).to eq('Negative number -1 is not supported')
        end

        it 'should return sum of numbers if new line delimeter is given' do 
            expect(calculator.add("1\n2\n3")).to eq(6)
        end
    end
end
require "nums_to_words"

RSpec.describe "nums_to_words" do
    context "converts numbers into words" do 
        it "returns word 'zero' for number 0" do
            expect( nums_to_words(0) ).to eq( "zero" )
        end
        it "returns word 'one' for number 1" do
            expect( nums_to_words(1) ).to eq( "one" )
        end
        it "returns correct words for numbers 1-9" do
            expect( nums_to_words(2) ).to eq( "two" )
            expect( nums_to_words(3) ).to eq( "three" )
            expect( nums_to_words(4) ).to eq( "four" )
            expect( nums_to_words(5) ).to eq( "five" )
            expect( nums_to_words(6) ).to eq( "six" )
            expect( nums_to_words(7) ).to eq( "seven" )
            expect( nums_to_words(8) ).to eq( "eight" )
            expect( nums_to_words(9) ).to eq( "nine" )
        end
        it "returns correct word for numbers between 10-20" do
            expect( nums_to_words(10) ).to eq( "ten" )
            expect( nums_to_words(11) ).to eq( "eleven" )
            expect( nums_to_words(12) ).to eq( "twelve" )
            expect( nums_to_words(13) ).to eq( "thirteen" )
            expect( nums_to_words(14) ).to eq( "fourteen" )
            expect( nums_to_words(15) ).to eq( "fifteen" )
            expect( nums_to_words(16) ).to eq( "sixteen" )
            expect( nums_to_words(17) ).to eq( "seventeen" )
            expect( nums_to_words(18) ).to eq( "eighteen" )
            expect( nums_to_words(19) ).to eq( "nineteen" )
            expect( nums_to_words(20) ).to eq( "twenty" )
        end
    end
end
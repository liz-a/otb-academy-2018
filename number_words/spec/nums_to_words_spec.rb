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
        it "returns 'twenty-one' for the number 21" do
            expect( nums_to_words(21)).to eq ( "twenty-one")
        end
        it "returns correct word for numbers under 100" do
            expect( nums_to_words(22)).to eq ( "twenty-two")
            expect( nums_to_words(33)).to eq ( "thirty-three")
            expect( nums_to_words(44)).to eq ( "forty-four")
            expect( nums_to_words(55)).to eq ( "fifty-five")
            expect( nums_to_words(66)).to eq ( "sixty-six")
            expect( nums_to_words(77)).to eq ( "seventy-seven")
            expect( nums_to_words(88)).to eq ( "eighty-eight")
            expect( nums_to_words(99)).to eq ( "ninety-nine")
        end
        it "returns 'one hundred' for the number 100" do
            expect( nums_to_words(100)).to eq ( "one hundred")
        end
        it "returns 'one hundred and one' for number 101" do
            expect( nums_to_words(101)).to eq ( "one hundred and one")
        end
        it "returns correct words for numbers between 102-999" do
            expect( nums_to_words(111)).to eq ( "one hundred and eleven")
            expect( nums_to_words(222)).to eq ( "two hundred and twenty-two")
            expect( nums_to_words(333)).to eq ( "three hundred and thirty-three")
            expect( nums_to_words(444)).to eq ( "four hundred and forty-four")
            expect( nums_to_words(555)).to eq ( "five hundred and fifty-five")
            expect( nums_to_words(666)).to eq ( "six hundred and sixty-six")
            expect( nums_to_words(777)).to eq ( "seven hundred and seventy-seven")
            expect( nums_to_words(888)).to eq ( "eight hundred and eighty-eight")
            expect( nums_to_words(999)).to eq ( "nine hundred and ninety-nine")
        end
    end
end
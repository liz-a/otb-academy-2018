require "nums_to_words_recursive"

RSpec.describe "nums_to_words_recursive" do
    context "converts numbers into words" do 
        it "returns word 'zero' for number 0" do
            expect( nums_to_words_recursive(0) ).to eq( "zero" )
        end
        it "returns word 'one' for number 1" do
            expect( nums_to_words_recursive(1) ).to eq( "one" )
        end
        it "returns correct words for numbers 1-9" do
            expect( nums_to_words_recursive(2) ).to eq( "two" )
            expect( nums_to_words_recursive(3) ).to eq( "three" )
            expect( nums_to_words_recursive(4) ).to eq( "four" )
            expect( nums_to_words_recursive(5) ).to eq( "five" )
            expect( nums_to_words_recursive(6) ).to eq( "six" )
            expect( nums_to_words_recursive(7) ).to eq( "seven" )
            expect( nums_to_words_recursive(8) ).to eq( "eight" )
            expect( nums_to_words_recursive(9) ).to eq( "nine" )
        end
        it "returns correct word for numbers between 10-20" do
            expect( nums_to_words_recursive(10) ).to eq( "ten" )
            expect( nums_to_words_recursive(11) ).to eq( "eleven" )
            expect( nums_to_words_recursive(12) ).to eq( "twelve" )
            expect( nums_to_words_recursive(13) ).to eq( "thirteen" )
            expect( nums_to_words_recursive(14) ).to eq( "fourteen" )
            expect( nums_to_words_recursive(15) ).to eq( "fifteen" )
            expect( nums_to_words_recursive(16) ).to eq( "sixteen" )
            expect( nums_to_words_recursive(17) ).to eq( "seventeen" )
            expect( nums_to_words_recursive(18) ).to eq( "eighteen" )
            expect( nums_to_words_recursive(19) ).to eq( "nineteen" )
            expect( nums_to_words_recursive(20) ).to eq( "twenty" )
        end
        it "returns 'twenty-one' for the number 21" do
            expect( nums_to_words_recursive(21)).to eq ( "twenty-one")
        end
        it "returns correct word for numbers under 100" do
            expect( nums_to_words_recursive(22)).to eq ( "twenty-two")
            expect( nums_to_words_recursive(33)).to eq ( "thirty-three")
            expect( nums_to_words_recursive(44)).to eq ( "forty-four")
            expect( nums_to_words_recursive(55)).to eq ( "fifty-five")
            expect( nums_to_words_recursive(66)).to eq ( "sixty-six")
            expect( nums_to_words_recursive(77)).to eq ( "seventy-seven")
            expect( nums_to_words_recursive(88)).to eq ( "eighty-eight")
            expect( nums_to_words_recursive(99)).to eq ( "ninety-nine")
        end
        it "returns 'one hundred' for the number 100" do
            expect( nums_to_words_recursive(100)).to eq ( "one hundred")
        end
        it "returns 'one hundred and one' for number 101" do
            expect( nums_to_words_recursive(101)).to eq ( "one hundred and one")
        end
        it "returns correct words for numbers between 102-999" do
            expect( nums_to_words_recursive(111)).to eq ( "one hundred and eleven")
            expect( nums_to_words_recursive(222)).to eq ( "two hundred and twenty-two")
            expect( nums_to_words_recursive(333)).to eq ( "three hundred and thirty-three")
            expect( nums_to_words_recursive(444)).to eq ( "four hundred and forty-four")
            expect( nums_to_words_recursive(555)).to eq ( "five hundred and fifty-five")
            expect( nums_to_words_recursive(666)).to eq ( "six hundred and sixty-six")
            expect( nums_to_words_recursive(777)).to eq ( "seven hundred and seventy-seven")
            expect( nums_to_words_recursive(888)).to eq ( "eight hundred and eighty-eight")
            expect( nums_to_words_recursive(999)).to eq ( "nine hundred and ninety-nine")
        end
        it "returns the correct words for numbers between 1000-999999" do
            expect( nums_to_words_recursive(1000)).to eq ( "one thousand")
            expect( nums_to_words_recursive(2101)).to eq ( "two thousand, one hundred and one")
            expect( nums_to_words_recursive(3111)).to eq ( "three thousand, one hundred and eleven")
            expect( nums_to_words_recursive(5172)).to eq ( "five thousand, one hundred and seventy-two")
            expect( nums_to_words_recursive(20772)).to eq ( "twenty thousand, seven hundred and seventy-two")
        end
        it "returns the correct words for numbers above 1000000" do
            expect( nums_to_words_recursive(1000000)).to eq ( "one million")
            expect( nums_to_words_recursive(5002101)).to eq ( "five million, two thousand, one hundred and one")
            expect( nums_to_words_recursive(8030111)).to eq ( "eight million, thirty thousand, one hundred and eleven")
            expect( nums_to_words_recursive(9005172)).to eq ( "nine million, five thousand, one hundred and seventy-two")
            expect( nums_to_words_recursive(40020772)).to eq ( "forty million, twenty thousand, seven hundred and seventy-two")
            expect( nums_to_words_recursive(999999999)).to eq ( "nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine")
        end
        it "returns the correct words for numbers above one billion" do
            expect( nums_to_words_recursive(1000000000)).to eq ( "one billion")
            expect( nums_to_words_recursive(2005002101)).to eq ( "two billion, five million, two thousand, one hundred and one")
            expect( nums_to_words_recursive(3008030111)).to eq ( "three billion, eight million, thirty thousand, one hundred and eleven")
            expect( nums_to_words_recursive(7009005172)).to eq ( "seven billion, nine million, five thousand, one hundred and seventy-two")
            expect( nums_to_words_recursive(8040020772)).to eq ( "eight billion, forty million, twenty thousand, seven hundred and seventy-two")
            expect( nums_to_words_recursive(999999999999)).to eq ( "nine hundred and ninety-nine billion, nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine")
        end
    end
end
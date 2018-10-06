require "nums_to_words"

RSpec.describe "nums_to_words" do
    context "converts numbers into words" do 
        it "returns word 'zero' for number 0" do
            expect( nums_to_words(0) ).to eq( "zero" )
        end
    end
end
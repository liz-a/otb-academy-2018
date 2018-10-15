require "dictionary"

RSpec.describe 'Dictionary' do

  it 'returns a string' do
    @dictionary = Dictionary.new(test: true)
    expect(@dictionary.get_word).to eq ["t","e","s","t"]
  end

  it 'returns a string' do
    @dictionary = Dictionary.new(test: true)
    expect(@dictionary.get_word).not_to eq ["t","o","m","a","t","o"]
  end

  it "returns a word from the wordlist" do
    @dictionary = Dictionary.new
    expect(["Manchester", "Madrid", "Glasgow","test"]).to include(@dictionary.get_word.join)
  end

end
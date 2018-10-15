require "hangman"

RSpec.describe 'Hangman' do

  before :each do
    @hangman = Hangman.new(test: true)
  end

  it 'Returns a semi completed word for a correct guess' do
  expect(@hangman.take_turn("t")).to eq "t _ _ t"
  expect(@hangman.take_turn("e")).to eq "t e _ t"
  expect(@hangman.take_turn("s")).to eq "t e s t"
  end

  it 'Decrements lives when passed an incorrect letter' do
  expect(@hangman.lives).to eq 13
  expect(@hangman.take_turn("x")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 12
  expect(@hangman.take_turn("y")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 11
  expect(@hangman.take_turn("z")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 10
  expect(@hangman.take_turn("a")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 9
  expect(@hangman.take_turn("b")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 8
  expect(@hangman.take_turn("c")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 7
  expect(@hangman.take_turn("d")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 6
  expect(@hangman.take_turn("f")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 5
  expect(@hangman.take_turn("g")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 4
  expect(@hangman.take_turn("h")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 3
  expect(@hangman.take_turn("i")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 2
  expect(@hangman.take_turn("j")).to eq "_ _ _ _"
  expect(@hangman.lives).to eq 1
  expect(@hangman.take_turn("k")).to eq "FAIL"
  expect(@hangman.lives).to eq 0
  end

  it 'Return a message for letters that have already been guessed' do
    expect(@hangman.take_turn("t")).to eq "t _ _ t"
    expect(@hangman.take_turn("t")).to eq "letter already guessed"
  end

  it 'Returns the same semi completed word for an incorrect guess' do
    expect(@hangman.take_turn("t")).to eq "t _ _ t"
    # expect(@hangman.take_turn("y")).to eq "t _ _ t"
    expect(@hangman.take_turn("e")).to eq "t e _ t"
    # expect(@hangman.take_turn("z")).to eq "t e _ t"
    expect(@hangman.take_turn("s")).to eq "t e s t"
    end


end


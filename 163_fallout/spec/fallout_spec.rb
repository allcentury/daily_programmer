require 'rspec'
require_relative '../lib/fallout'

describe Fallout do
  before(:each) do
    @game = Fallout.new
  end
  it 'selects a series of words' do
    rating = "5"
    expect(@game.weighted_bank(rating).count).to eq(10)
  end
  it 'needs an integer to pull words' do
    rating = "lemons"
    expect(@game.weighted_bank(rating)).to eq("Please enter a valid integer 1-5")
  end
  it "can't send in nil" do
    rating = nil
    expect(@game.weighted_bank(rating)).to eq("Please enter a valid integer 1-5")
  end
  it "can't be blank" do
    rating = ""
    expect(@game.weighted_bank(rating)).to eq("Please enter a valid integer 1-5")
  end
  it 'compares two strings character by characters' do
    string1 = "lemons"
    winning_word = "grapes"
    expect(@game.search_string(string1, winning_word)).to eq(1)
  end
  it 'makes sure the string is of the right length' do
    string1 = "lemons"
    winning_word = "limes"
    expect(@game.search_string(string1, winning_word)).to eq("You must enter a string of valid(#{winning_word.length}) length")
  end
  it "can't send in nill" do
    string1 = nil
    winning_word = "limes"
    expect(@game.search_string(string1, winning_word)).to eq("You must enter a string of valid(#{winning_word.length}) length")
  end
end

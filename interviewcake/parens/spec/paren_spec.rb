require 'rspec'
require_relative '../lib/paren'

describe ParenFinder do
  it 'finds the the relevant closing parenthesis' do
    string = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
    finder = ParenFinder.new(string, 10)
    expect(finder.find_closing).to eq(79)
  end
end

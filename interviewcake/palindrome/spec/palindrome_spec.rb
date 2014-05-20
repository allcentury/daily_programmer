require 'rspec'
require_relative '../lib/palindrome'

describe Word do
  it 'checks if a word is a palindrome' do
    string = "civic"
    string2 = "ivicc"
    string3 = "civil"
    string4 = "livci"
    expect(Word.is_palindrome?(string)).to eq(true)
    expect(Word.is_palindrome?(string2)).to eq(true)
    expect(Word.is_palindrome?(string3)).to eq(false)
    expect(Word.is_palindrome?(string4)).to eq(false)
  end

end

# "civic" should return true
# "ivicc" should return true
# "civil" should return false
# "livci" should return false

require 'rspec'
require_relative '../lib/compression'

describe Import do
  it 'imports from a txt file and gives back a hash' do
    expect(Import.text_data).to_not be(nil)
    expect(Import.text_data.count).to eq(21)
  end
end

describe Compression do
  before(:each) do
    dictionary = Import.text_data
    @compression = Compression.new(dictionary)
  end
  it 'converts substring form input using imported dictionary' do
    sub_string = "0^ 1 6 7 8 5 10 2 . R"
    expect(@compression.decompress(sub_string)).to eq("I do not like them in a house.")
  end
  it 'converts another substring' do
    sub_string = "0^ 1 6 7 8 3 10 4 . R"
    expect(@compression.decompress(sub_string)).to eq("I do not like them with a mouse.")
  end
  it 'converts another substring' do
    sub_string = "0^ 1 6 7 8 15 16 17 . R"
    expect(@compression.decompress(sub_string)).to eq("I do not like them here or there.")
  end
  it 'converts another substring' do
    sub_string = "0^ 1 6 7 8 11 . R"
    expect(@compression.decompress(sub_string)).to eq("I do not like them anywhere.")
  end
  it 'converts another substring' do
    sub_string = "0^ 1 6 7 12 13 14 9 . R"
    expect(@compression.decompress(sub_string)).to eq("I do not like green eggs and ham.")
  end
  it 'converts strings with hyphens' do
    sub_string = "0^ 1 6 7 8 , 18^ - 0^ - 19 . R E"
    expect(@compression.decompress(sub_string)).to eq("I do not like them, Sam-I-am.")
  end
end



# 0^ 1 6 7 8 11 . R
# 0^ 1 6 7 12 13 14 9 . R
# 0^ 1 6 7 8 , 18^ - 0^ - 19 . R E
# I do not like them anywhere.
# I do not like green eggs and ham.
# I do not like them, Sam-I-am.

require 'pry'

string = "This is an amazing string"
substring = "amazing"
ctr = 0
string.gsub!(" ", "")
contained = false
while ctr < string.length
  if substring == string[ctr, substring.length]
    contained = true
  end
  ctr += 1
end

puts contained

def istorn?(number)
  #cut into array
  nums = number.chars.each_slice(2).map(&:join)
  sum = 0
  nums.each { |num| sum += num.to_i }
  if (sum *= sum) == number.to_i
    return true
  else
    return false
  end
end

def find_torns
  ctr = 1000
  while ctr < 9999 do
    if istorn?(ctr.to_s)
      puts "Yes, #{ctr} is a torn number"
    end
    ctr += 1
  end
end

find_torns

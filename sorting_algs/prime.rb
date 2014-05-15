require 'pry'

puts "Prime numbers 1-2000:"
for i in (1..2000)
  prime = true
  binding.pry
  for j in (2..(i-1))
    binding.pry
    if i % j == 0
      prime = false
    end
  end
  if prime
    print i;
    print ","
  end
end

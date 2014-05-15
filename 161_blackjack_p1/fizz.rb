ctr = 1

while ctr <= 100
  if ctr % 5 == 0 && ctr % 3 == 0
    puts "fizzbuzz"
  elsif ctr % 5 == 0
    puts "buzz"
  elsif ctr % 3 == 0
    puts "fizz"
  else
    puts "#{ctr}"
  end
  ctr += 1
end

def fibo(num)
  if num < 2
    num
  else
    fibo(num-1) + fibo(num-2)
  end
end

def find_highest_fibo(num)
  num_array = []
  closest_fibo = 0
  ctr = 0
  while closest_fibo < num
    closest_fibo = fibo(ctr)
    num_array << closest_fibo
    ctr += 1
  end
  num_array.pop
  num_array
end

def zeck(num)
  num_array = []
  if num <= 1
    puts num
  else
    num_array = find_highest_fibo(num)
    puts "#{num_array.last}"
    binding.pry
    zeck(num-num_array.last)
  end
end

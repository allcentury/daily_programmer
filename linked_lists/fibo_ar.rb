require 'pry'
def fib(value)
  seq = []
  if value < 2
    return seq << value
  else
    ctr = 3
    seq = [0,1,1]
    while ctr <= value
      seq << (seq[ctr-1] + seq[ctr-2])
      ctr += 1
    end
  end
  seq.last
end



p fib(1000)

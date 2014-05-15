require 'pry'
Cell = Struct.new(:value, :next)
head = Cell.new(1, nil)
tail = head
ctr = 1

def linked_list(value, position)
  return Cell.new(value, position)
end

while ctr < 20
  ctr += 1
  # binding.pry
  tail = linked_list(ctr, tail.next)
  # tail = tail.next
  binding.pry
end

puts head
puts tail

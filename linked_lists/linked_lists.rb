require 'benchmark'
require 'pry'
Cell = Struct.new(:value, :next)

list = Cell.new("head of list", nil)

def linked_list(value, cell)
  return Cell.new(value, cell)
end

def recursive_print(list)
  p list.value
  p list.next
  recursive_print(list.next) unless list.next == nil
end


ctr = 0

#add to head
100.times {
  ctr += 1
  list = linked_list(ctr, list)
}

puts Benchmark.measure { recursive_print(list) }
current = list
# binding.pry
ctr = 0
while current != nil
  # binding.pry
  ctr += 1
  current = current.next
end

puts ctr

require 'benchmark'

number_of_elements = 25_600_000

a1 =[]
a2 = []
a3 = []
a4 = []
q1 = Queue.new
q2 = Queue.new

puts number_of_elements

number_of_elements.times do
  q1.enq(true)
  q2.enq(true)
  a1 << true
  a2 << true
  a3 << true
  a4 << true
end

number_of_operations = 100000

Benchmark.bm do |bm|
  puts "Queue#enq('test')"
  bm.report do    
    number_of_operations.times { q1.enq('test') }
  end

  puts "Queue#deq"
  bm.report do    
    number_of_operations.times { q2.deq }
  end

  puts "Array#shift"
  bm.report do
    number_of_operations.times { a1.shift }
  end 

  puts "Array#unshift"
  bm.report do
    number_of_operations.times { a2.unshift('test') }    
  end 

  puts "Array#pop"
  bm.report do
    number_of_operations.times { a3.pop }
  end

  puts "Array#<<"
  bm.report do
    number_of_operations.times { a4 << 'test' }
  end      
end

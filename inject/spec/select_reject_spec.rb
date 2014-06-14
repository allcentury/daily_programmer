require 'rspec'
require 'benchmark'
require_relative '../lib/select_reject'



alphabet = ('a'..'z').to_a
many_letters = Hash.new 0 
(1..1000000).each { many_letters[alphabet.sample] += 1 }

Benchmark.bm do |bm|
  bm.report { select_meth(many_letters) }
  bm.report { reject_meth(many_letters) }
end



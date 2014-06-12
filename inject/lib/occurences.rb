def occurences(array)
  results = Hash.new 0 
  array.each { |val| results[val] += 1 }
  non_uniq(results)
end

def non_uniq(occurences_hash)
  occurences_hash.select { |key, val| occurences_hash[key] > 1 }.keys
end


#original code snipet

def function(a)
  a.inject({}){ |a,b| a[b] = a[b].to_i + 1; a}.\
    reject{ |a,b| b == 1 }.keys
end
